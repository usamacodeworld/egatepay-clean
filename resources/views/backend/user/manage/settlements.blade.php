@extends('backend.user.manage')

@section('user_manage_content')
    <div class="row">
        {{-- Settlements Card --}}
        <div class="col-12 mt-4">
            <div class="card border-0 shadow-sm">
                <div class="card-body px-0">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h5 class="card-title fw-semibold text-capitalize mb-0 text-primary">
                            <i class="fa fa-wallet me-2"></i>Settlements
                        </h5>
                        <button type="button" class="btn btn-primary shadow" id="toggleSettlementForm"
                            {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}>
                            <x-icon name="plus" height="18" /> Add Settlement
                        </button>
                    </div>

                    {{-- Add Settlement Form --}}
                    <div id="settlementFormWrapper" class="card border-primary shadow-sm mb-4" style="display: none;">
                        <div class="card-body">
                            <form action="{{ route('admin.user.manage.settlement.store') }}" method="POST"
                                enctype="multipart/form-data" id="settlementForm">
                                @csrf
                                <input type="hidden" name="user_id" value="{{ $user->id }}" id="">
                                @php
                                    $merchant = \App\Models\Merchant::where('user_id', $user->id)->first();
                                @endphp
                                <input type="hidden" name="merchant_id" value="{{ $merchant->id }}" id="">

                                {{-- Payable Amount Alert --}}
                                <div class="alert alert-info fw-semibold d-flex justify-content-between align-items-center">
                                    <div>
                                        <i class="fa fa-money-bill-wave me-2"></i>
                                        {{ $user->payable_amount && $user->payable_amount > 0
                                            ? 'Payable Amount: $' . number_format($user->payable_amount, 2)
                                            : 'No payable amount available.' }}
                                    </div>

                                    @if (!$user->payable_amount || $user->payable_amount <= 0)
                                        <span class="badge bg-danger px-3 py-2">Cannot request settlement</span>
                                    @endif
                                </div>

                                {{-- Settlement Details --}}
                                <h6 class="fw-bold text-uppercase text-primary border-bottom pb-2 mb-3">Settlement Details
                                </h6>
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label class="form-label fw-semibold">Settlement Type</label>
                                        <select name="settlement_type" class="form-control border-primary"
                                            {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}>
                                            <option value="manual">Manual</option>
                                            <option value="automatic">Automatic</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label fw-semibold">Settlement Method</label>
                                        <select name="settlement_method" class="form-control border-primary"
                                            {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}>
                                            <option value="bank_transfer">Bank Transfer</option>
                                            <option value="cheque">Cheque</option>
                                            <option value="cash">Cash</option>
                                            <option value="wallet">Wallet</option>
                                        </select>
                                    </div>

                                    {{-- Currency Section --}}
                                    <h6 class="fw-bold text-uppercase text-success border-bottom pb-2 mt-4 mb-3">Currency
                                        Information</h6>
                                    <div class="col-md-6">
                                        <label class="form-label">Base Currency</label>
                                        <input type="text" name="base_currency" class="form-control border-success"
                                            value="USD" maxlength="3"
                                            {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Settlement Currency</label>
                                        <input type="text" name="settlement_currency" class="form-control border-success"
                                            value="USD" maxlength="3"
                                            {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Exchange Rate</label>
                                        <input type="number" name="exchange_rate" class="form-control border-success"
                                            step="0.000001" value="1"
                                            {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Converted Amount</label>
                                        <input type="number" name="converted_amount" class="form-control border-success"
                                            step="0.01"
                                            {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}>
                                    </div>

                                    {{-- Amounts & Charges --}}
                                    <h6 class="fw-bold text-uppercase text-danger border-bottom pb-2 mt-4 mb-3">Amount &
                                        Charges</h6>
                                    <div class="col-md-6">
                                        <label class="form-label">Gross Amount</label>
                                        <input type="number" name="gross_amount" id="gross_amount"
                                            class="form-control border border-danger shadow-sm" step="0.01"
                                            {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Tax (%)</label>
                                        <input type="number" name="tax_percentage" id="tax_percentage"
                                            class="form-control border border-warning shadow-sm" step="0.01"
                                            {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">VAT (%)</label>
                                        <input type="number" name="vat_percentage" id="vat_percentage"
                                            class="form-control border border-warning shadow-sm" step="0.01"
                                            {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Gateway Fee (%)</label>
                                        <input type="number" name="gateway_fee_percentage" id="gateway_fee_percentage"
                                            class="form-control border border-warning shadow-sm" step="0.01"
                                            {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label fw-bold text-success">Net Amount</label>
                                        <input type="text" id="net_amount" name="net_amount"
                                            class="form-control border border-success fw-bold text-success" readonly>
                                        <small id="netAmountError" class="text-danger d-none"></small>
                                    </div>

                                    {{-- Payment Receipt --}}
                                    <div class="col-md-6">
                                        <label class="form-label">Payment Receipts</label>
                                        <input type="file" name="payment_receipts[]"
                                            class="form-control border border-primary" multiple
                                            accept="image/*,application/pdf"
                                            {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}>
                                    </div>

                                    {{-- Remarks --}}
                                    <div class="col-12">
                                        <label class="form-label">Remarks / Notes</label>
                                        <textarea name="remarks" class="form-control border-secondary" rows="3"
                                            {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}></textarea>
                                    </div>
                                </div>

                                <div class="text-end mt-4">
                                    <button type="button" class="btn btn-secondary me-2" id="cancelSettlementForm">
                                        Cancel
                                    </button>
                                    <button type="submit" class="btn btn-primary shadow" id="submitSettlementBtn"
                                        {{ !$user->payable_amount || $user->payable_amount <= 0 ? 'disabled' : '' }}>
                                        <x-icon name="plus" height="18" /> Add Settlement
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>

                    {{-- Settlements Table --}}
                    <div class="table-responsive shadow-sm mt-4">
                        <table class="table table-bordered table-hover">
                            <thead class="table-primary text-center">
                                <tr>
                                    <th>Settlement ID</th>
                                    <th>Date</th>
                                    <th>Gross</th>
                                    <th>Tax</th>
                                    <th>VAT</th>
                                    <th>Gateway Fee</th>
                                    <th>Platform Commission</th>
                                    <th>Other</th>
                                    <th>Adjustments</th>
                                    <th>Net</th>
                                    <th>Status</th>
                                    <th>Receipt</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse($settlements as $settlement)
                                    <tr>
                                        <td>{{ $settlement->settlement_id }}</td>
                                        <td>{{ $settlement->settlement_date->format('d M Y') }}</td>
                                        <td class="text-primary fw-semibold">
                                            ${{ number_format($settlement->gross_amount, 2) }}</td>
                                        <td class="text-danger">${{ number_format($settlement->tax_amount, 2) }}</td>
                                        <td class="text-danger">${{ number_format($settlement->vat_amount, 2) }}</td>
                                        <td class="text-warning">${{ number_format($settlement->gateway_fee, 2) }}</td>
                                        <td class="text-info">${{ number_format($settlement->platform_commission, 2) }}
                                        </td>
                                        <td>${{ number_format($settlement->other_charges, 2) }}</td>
                                        <td>${{ number_format($settlement->adjustments, 2) }}</td>
                                        <td><strong
                                                class="text-success">${{ number_format($settlement->net_amount, 2) }}</strong>
                                        </td>
                                        <td>
                                            <span
                                                class="badge bg-{{ $settlement->status === 'paid' ? 'success' : ($settlement->status === 'pending' ? 'warning' : 'danger') }}">
                                                {{ ucfirst($settlement->status) }}
                                            </span>
                                        </td>
                                        <td>
                                            @if ($settlement->payment_receipts)
                                                @foreach (json_decode($settlement->payment_receipts) as $receipt)
                                                    <a href="{{ asset('storage/' . $receipt) }}" target="_blank"
                                                        class="badge bg-primary">View</a><br>
                                                @endforeach
                                            @else
                                                —
                                            @endif
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="12" class="text-center text-muted">No settlements found</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script>
        const settlementFormWrapper = $('#settlementFormWrapper');
        const netAmountInput = $('#net_amount');
        const netAmountError = $('#netAmountError');
        const addSettlementBtn = $('button[type="submit"]');
        const submitSettlementBtn = $('#submitSettlementBtn');

        // Numeric input restriction
        $('#gross_amount, #tax_percentage, #vat_percentage, #gateway_fee_percentage, #other_charges').on('input',
            function() {
                let value = $(this).val();
                // Allow only numbers and decimals
                if (!/^\d*\.?\d*$/.test(value)) {
                    $(this).val(value.replace(/[^0-9.]/g, '')); // Remove invalid chars
                }
                calculateNetAmount();
            });


        // If payable amount = 0, disable form submission
        $('#settlementForm').on('submit', function(e) {
            const payableAmount = {{ $user->payable_amount ?? 0 }};
            if (payableAmount <= 0) {
                e.preventDefault();
                alert("You cannot request a settlement because your payable amount is 0.");
                return false;
            }
        });

        // Toggle settlement form
        $('#toggleSettlementForm').click(function() {
            settlementFormWrapper.slideToggle(300);
        });

        $('#cancelSettlementForm').click(function() {
            settlementFormWrapper.slideUp(300);
        });

        // Calculate Net Amount with Validation
        function calculateNetAmount() {
            let gross = parseFloat($('#gross_amount').val()) || 0;
            let tax = parseFloat($('#tax_percentage').val()) || 0;
            let vat = parseFloat($('#vat_percentage').val()) || 0;
            let gateway = parseFloat($('#gateway_fee_percentage').val()) || 0;
            let platform = parseFloat($('#platform_commission').val()) || 0;
            let other = parseFloat($('#other_charges').val()) || 0;

            // Calculate all deductions
            let taxAmount = gross * (tax / 100);
            let vatAmount = gross * (vat / 100);
            let gatewayAmount = gross * (gateway / 100);
            let platformAmount = gross * (platform / 100);
            let net = gross - taxAmount - vatAmount - gatewayAmount - platformAmount - other;

            // Reset previous errors
            resetValidation();

            // Validations
            if (gross <= 0) {
                showError("Gross amount must be greater than zero.");
                return;
            }

            if (isNaN(gross) || isNaN(tax) || isNaN(vat) || isNaN(gateway) || isNaN(platform) || isNaN(other)) {
                showError("Please enter valid numeric values only.");
                return;
            }

            if (tax < 0 || vat < 0 || gateway < 0 || platform < 0 || other < 0) {
                showError("Values cannot be negative.");
                return;
            }

            if ((tax + vat + gateway + platform) > 100) {
                showError("Total percentage deductions (Tax + VAT + Gateway + Platform) cannot exceed 100%.");
                return;
            }

            if (net < 0) {
                showError("Net amount cannot be negative. Please reduce deductions.");
                return;
            }

            // If everything is valid → set net amount
            netAmountInput.val(net.toFixed(2));
            addSettlementBtn.prop('disabled', false);
        }


        // Reset error state
        function resetValidation() {
            netAmountError.addClass('d-none').text('');
            netAmountInput.removeClass('is-invalid');
            addSettlementBtn.prop('disabled', false);
        }

        // Show error message but DON'T hide input
        function showError(message) {
            netAmountError.removeClass('d-none').text(message);
            netAmountInput.addClass('is-invalid');
            addSettlementBtn.prop('disabled', true);
        }
    </script>
@endpush
