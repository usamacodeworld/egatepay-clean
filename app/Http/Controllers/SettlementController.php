<?php

namespace App\Http\Controllers;

use App\Models\Settlement;
use App\Models\Merchant;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class SettlementController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // ✅ Fetch settlements for the authenticated user
        $settlements = Settlement::where('user_id', Auth::id())
            ->orderBy('created_at', 'desc')
            ->paginate(10);

        // ✅ Return settlements view with data
        $page_name = 'Settlements';
        return view('frontend.user.settlements.index', compact('settlements', 'page_name'));
    }

    public function dispursal()
    {
        // ✅ Fetch settlements for the authenticated user
        $settlements = Settlement::where('user_id', Auth::id())
            ->where('status', 'rejected')
            ->orderBy('created_at', 'desc')
            ->paginate(10);

        // ✅ Return settlements view with data
        $page_name = 'Dispursal';
        return view('frontend.user.settlements.index', compact('settlements', 'page_name'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // ✅ Validate Request
        $validated = $request->validate([
            'user_id'            => 'required|exists:users,id',
            'merchant_id'        => 'required|exists:merchants,id',
            'gross_amount'       => 'required|numeric|min:1',
            'tax_percentage'     => 'nullable|numeric|min:0|max:100',
            'vat_percentage'     => 'nullable|numeric|min:0|max:100',
            'gateway_fee_percentage' => 'nullable|numeric|min:0|max:100',
            'platform_commission' => 'nullable|numeric|min:0',
            'other_charges'      => 'nullable|numeric|min:0',
            'adjustments'        => 'nullable|numeric',
            'settlement_type'    => 'nullable|in:manual,automatic',
            'settlement_method'  => 'nullable|in:bank_transfer,cheque,cash,wallet',
            'base_currency'      => 'nullable|string|size:3',
            'settlement_currency' => 'nullable|string|size:3',
            'exchange_rate'      => 'nullable|numeric|min:0',
            'payment_receipts.*' => 'nullable|file|mimes:jpg,jpeg,png,pdf|max:2048',
            'remarks'            => 'nullable|string',
        ]);

        try {
            DB::beginTransaction();

            // ✅ Get merchant details
            $merchant = Merchant::findOrFail($validated['merchant_id']);

            // ✅ Set currencies & exchange rate
            $baseCurrency = $validated['base_currency'] ?? 'USD';
            $settlementCurrency = $validated['settlement_currency'] ?? 'USD';
            $exchangeRate = $validated['exchange_rate'] ?? 1;

            // ✅ Calculate amounts
            $grossAmount = $validated['gross_amount'];
            $taxPercentage = $validated['tax_percentage'] ?? 0;
            $vatPercentage = $validated['vat_percentage'] ?? 0;
            $gatewayFeePercentage = $validated['gateway_fee_percentage'] ?? 0;
            $platformCommission = $validated['platform_commission'] ?? 0;
            $otherCharges = $validated['other_charges'] ?? 0;
            $adjustments = $validated['adjustments'] ?? 0;

            // ✅ Auto calculate deduction amounts
            $taxAmount = ($grossAmount * $taxPercentage) / 100;
            $vatAmount = ($grossAmount * $vatPercentage) / 100;
            $gatewayFee = ($grossAmount * $gatewayFeePercentage) / 100;

            // ✅ Calculate net amount
            $netAmount = $grossAmount - ($taxAmount + $vatAmount + $gatewayFee + $platformCommission + $otherCharges) + $adjustments;

            // ✅ Convert amount if settlement currency is different
            $convertedAmount = $settlementCurrency !== $baseCurrency
                ? $netAmount * $exchangeRate
                : $netAmount;

            // ✅ Handle multiple payment receipts upload
            $uploadedReceipts = [];
            if ($request->hasFile('payment_receipts')) {
                foreach ($request->file('payment_receipts') as $file) {
                    $uploadedReceipts[] = $file->store('settlements/receipts', 'public');
                }
            }

            // ✅ Create settlement record
            $settlement = Settlement::create([
                'settlement_id'        => Str::uuid(),
                'settlement_date'      => now(),
                'settlement_type'      => $validated['settlement_type'] ?? 'manual',
                'settlement_method'    => $validated['settlement_method'] ?? 'bank_transfer',

                'base_currency'        => $baseCurrency,
                'settlement_currency'  => $settlementCurrency,
                'exchange_rate'        => $exchangeRate,
                'converted_amount'     => $convertedAmount,

                'user_id'             => $validated['user_id'],
                'merchant_id'         => $validated['merchant_id'],
                'merchant_name'       => $merchant->name ?? null,
                'merchant_email'      => $merchant->email ?? null,

                'requested_by'        => Auth::id(),
                'requested_at'        => now(),

                'gross_amount'        => $grossAmount,
                'tax_percentage'      => $taxPercentage,
                'tax_amount'          => $taxAmount,
                'vat_percentage'      => $vatPercentage,
                'vat_amount'          => $vatAmount,
                'gateway_fee_percentage' => $gatewayFeePercentage,
                'gateway_fee'        => $gatewayFee,
                'platform_commission' => $platformCommission,
                'other_charges'      => $otherCharges,
                'adjustments'       => $adjustments,
                'net_amount'        => $netAmount,

                'payment_receipts'   => !empty($uploadedReceipts) ? json_encode($uploadedReceipts) : null,
                'status'            => 'pending',
                'remarks'           => $validated['remarks'] ?? null,
            ]);

            $user = User::where('id', $merchant->user_id)->first();
            if ($user) {
                $user->decrement('payable_amount', $grossAmount);
            }

            DB::commit();

            return response()->json([
                'status'  => true,
                'message' => 'Settlement created successfully.',
                'data'    => $settlement
            ], 201);
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json([
                'status'  => false,
                'message' => 'Failed to create settlement.',
                'error'   => $e->getMessage()
            ], 500);
        }
    }


    /**
     * Display the specified resource.
     */
    public function show(Settlement $settlement)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Settlement $settlement)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Settlement $settlement)
    {
        //
    }
}
