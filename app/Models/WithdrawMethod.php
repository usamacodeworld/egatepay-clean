<?php

namespace App\Models;

use App\Enums\FixPctType;
use App\Enums\MethodType;
use App\Services\CurrencyConversionService;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

class WithdrawMethod extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'withdraw_methods';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'payment_gateway_id',
        'logo',
        'name',
        'type',
        'method_code',
        'currency',
        'currency_symbol',
        'min_withdraw',
        'max_withdraw',
        'conversion_rate_live',
        'conversion_rate',
        'charge_type',
        'charge',
        'user_charge',
        'user_charge_type',
        'merchant_charge',
        'merchant_charge_type',
        'process_time_value',
        'process_time_unit',
        'fields',
        'status',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'type'                 => MethodType::class,
        'user_charge_type'     => FixPctType::class,
        'merchant_charge_type' => FixPctType::class,
        'min_withdraw'         => 'double',
        'max_withdraw'         => 'double',
        'rate'                 => 'double',
        'charge'               => 'double',
        'user_charge'          => 'double',
        'merchant_charge'      => 'double',
        'process_time_value'   => 'integer',
        'fields'               => 'array',
        'status'               => 'boolean',
    ];

    public function paymentGateway()
    {
        return $this->belongsTo(PaymentGateway::class, 'payment_gateway_id');
    }

    /**
     * Scope a query to only include active withdrawal methods.
     *
     * @param  Builder $query
     * @return Builder
     */
    public function scopeActive($query)
    {
        return $query->where('status', true);
    }

    public function getConversionRateAttribute(): string
    {
        // Check if the conversion rate is set to live.
        if ($this->attributes['conversion_rate_live'] && $this->attributes['type'] === 'auto') {
            // Get an instance of the currency conversion service.
            $currencyConversionService = new CurrencyConversionService;

            // Convert the currency from the site's currency to the deposit method's currency.
            // The conversion rate is returned as a string with two decimal places.
            return number_format($currencyConversionService->convertCurrency(1, siteCurrency(), $this->attributes['currency']), 2, '.', '');
        }

        return $this->attributes['conversion_rate'];
    }

    /**
     * Get the full processing time as a string.
     */
    public function getProcessingTimeAttribute(): string
    {
        return $this->process_time_value ? "{$this->process_time_value} {$this->process_time_unit}" : __('Automated ASAP');
    }

    /**
     * Get the appropriate charge based on current user type.
     * Returns user_charge for regular users, merchant_charge for merchants.
     * Falls back to original charge field if user-specific charges are not set.
     */
    public function getChargeAttribute(): float
    {
        $user = auth()->user();

        // If no authenticated user, return original charge
        if (! $user) {
            return (float) $this->attributes['charge'];
        }

        // Check if authenticated user is from User model (not Admin model)
        // Admin access should always return original charge
        if (! ($user instanceof \App\Models\User)) {
            return (float) $this->attributes['charge'];
        }

        // Check if user is merchant
        $isMerchant = $this->isUserMerchant($user);

        if ($isMerchant && $this->attributes['merchant_charge'] !== null) {
            return (float) $this->attributes['merchant_charge'];
        }

        if (! $isMerchant && $this->attributes['user_charge'] !== null) {
            return (float) $this->attributes['user_charge'];
        }

        // Fallback to original charge if user-specific charges are not set
        return (float) $this->attributes['charge'];
    }

    /**
     * Get the appropriate charge type based on current user type.
     * Returns user_charge_type for regular users, merchant_charge_type for merchants.
     * Falls back to original charge_type field if user-specific charge types are not set.
     */
    public function getChargeTypeAttribute(): string
    {
        $user = auth()->user();

        // If no authenticated user, return original charge_type
        if (! $user) {
            return $this->attributes['charge_type'];
        }

        // Check if authenticated user is from User model (not Admin model)
        // Admin access should always return original charge_type
        if (! ($user instanceof \App\Models\User)) {
            return $this->attributes['charge_type'];
        }

        // Check if user is merchant
        $isMerchant = $this->isUserMerchant($user);

        if ($isMerchant && $this->attributes['merchant_charge_type'] !== null) {
            return $this->attributes['merchant_charge_type'];
        }

        if (! $isMerchant && $this->attributes['user_charge_type'] !== null) {
            return $this->attributes['user_charge_type'];
        }

        // Fallback to original charge_type if user-specific charge types are not set
        return $this->attributes['charge_type'];
    }

    /**
     * Check if the given user is a merchant.
     * Uses the existing isMerchant() method from User model.
     */
    private function isUserMerchant($user): bool
    {
        return $user->isMerchant();
    }

    /**
     * Calculate the total charge for a given amount.
     * Now uses dynamic charge and charge_type based on user context.
     */
    public function calculateCharge(float $amount): float
    {
        $chargeType = $this->charge_type; // This will use the dynamic accessor
        $charge     = $this->charge; // This will use the dynamic accessor

        if ($chargeType === 'fixed') {
            return $charge;
        }

        if ($chargeType === 'percent') {
            return ($charge / 100) * $amount;
        }

        return 0.0;
    }

    /**
     * Check if a given amount is within the allowed limits.
     */
    public function isWithinLimits(float $amount): bool
    {
        return $amount >= $this->min_withdraw && $amount <= $this->max_withdraw;
    }

    public function getLogoAttribute(): string
    {
        // Check if the 'icon' attribute is null.
        if ($this->attributes['logo'] === null) {
            // If it is null, return the 'logo' attribute of the payment gateway.
            return $this->paymentGateway->logo;
        }

        // If the 'icon' attribute is not null, return it.
        return $this->attributes['logo'];
    }
}
