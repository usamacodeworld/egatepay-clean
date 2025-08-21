@extends('frontend.layouts.user.index')
@section('title', __('Dashboard'))
@section('content')
{{-- amount card --}}
@include('frontend.user.dashboard.partials._amount_card')
{{-- chart card --}}
@include('frontend.user.dashboard.partials._chart_card')
@endsection

@push('scripts')
@include('frontend.user.dashboard.partials._script')
@endpush
