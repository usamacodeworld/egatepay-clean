@php use App\Constants\CurrencyRole; @endphp
@extends('backend.layouts.app')
@section('title', __('Currencies'))
@section('content')
    <div class="row py-4">
        <div class="col-md-6">
            <h3 class="fw-semibold">{{ __('Currency Management') }}</h3>
        </div>
        <div class="col-md-6 text-end"> <a href="{{ route('admin.settings.plugin_type', 'exchange_rate') }}"
                class="btn btn-secondary"> <x-icon name="currency" class="icon me-1" /> {{ __('Exchange Rate API Config') }}
            </a> <a href="#new_currency_modal" data-coreui-toggle="modal" class="btn btn-primary"> <x-icon name="add"
                    class="icon me-1" /> {{ __('Add Currency') }} </a> </div>
    </div>
    <div class="card border-0 mb-4">
        <div class="card-body">
            @if (session('exchange_rate_error'))
                <div class="alert alert-danger"> {{ session('exchange_rate_error') }} </div>
            @endif
            <div class="table-responsive rounded">
                <table class="table table-striped mb-0 align-middle caption-top">
                    <thead>
                        <tr>
                            <th>{{ __('Info') }}</th>
                            <th>{{ __('Type | Rate') }}</th>
                            <th>{{ __('Role') }}</th>
                            <th>{{ __('Status') }}</th>
                            <th>{{ __('Action') }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($currencies as $currency)
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center gap-2"> <img src="{{ asset($currency->flag) }}"
                                            class="avatar-md rounded" alt="{{ $currency->name }}">
                                        <div>
                                            <div class="fw-semibold">{{ $currency->name }} @if ($currency->default)
                                                    <span class="badge bg-success">{{ __('Default') }}</span>
                                                @endif
                                            </div>
                                            <div class="text-muted small">{{ $currency->code }}</div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex flex-column"> <span class="fw-semibold text-secondary">
                                            {{ strtoupper($currency->type) }} @if ($currency->rate_live)
                                                <span class="badge bg-danger">{{ __('LIVE') }}</span>
                                            @endif </span> <small class="text-body-secondary">
                                            <strong>1
                                                {{ siteCurrency() }} = {{ $currency->exchange_rate }}
                                                {{ $currency->code }}</strong> </small> </div>
                                </td>
                                <td>
                                    @foreach ($currency->activeRoles as $role)
                                        <span
                                            class="badge bg-{{ CurrencyRole::getBadgesColor($role->role_name) }}">{{ strtoupper($role->role_name) }}</span>
                                    @endforeach
                                </td>
                                <td> <span
                                        class="badge {{ $currency->status ? 'bg-success' : 'bg-danger' }} fw-semibold text-uppercase">
                                        {{ $currency->status ? __('Activated') : __('Not Activated') }} </span> </td>
                                <td>
                                    <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                                        <button type="button" class="btn btn-primary edit-modal" data-bs-toggle="modal"
                                            data-edit-url="{{ route('admin.currency.edit', $currency->id) }}"
                                            aria-label="Manage {{ $currency->name }}"> <x-icon name="manage"
                                                height="20" /> </button>
                                        @if ($currency->default != 1)
                                            <button type="button" class="btn btn-danger text-white delete"
                                                data-bs-toggle="modal"
                                                data-url="{{ route('admin.currency.destroy', $currency->id) }}"
                                                aria-label="Delete {{ $currency->name }}"> <x-icon name="delete-2"
                                                    height="20" /> </button>
                                        @endif
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    @include('backend.currencies.partials._create_modal')
    @include('backend.currencies.partials._edit_modal')
@endsection
@push('scripts')
    @include('backend.currencies.partials._script')
@endpush
