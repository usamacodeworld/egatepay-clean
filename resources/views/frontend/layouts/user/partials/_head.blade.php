<head> {{-- Basic Meta Tags --}}
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}"> {{-- Page Title --}} <title>{{ config('app.name') }} |
        @yield('title', 'Dashboard')</title> {{-- Favicon --}}
    <link rel="shortcut icon" href="{{ asset(setting('site_favicon')) }}" type="image/x-icon" /> {{-- Core CSS --}}
    <link rel="stylesheet" href="{{ asset('general/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('general/css/fontawesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('general/css/simple-notify.min.css') }}">
    <link rel="stylesheet" href="{{ asset('general/css/common.css') }}"> {{-- Dashboard Specific CSS --}}
    <link rel="stylesheet" href="{{ asset('general/css/daterangepicker.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/dashboard-style.css?v=' . config('app.version')) }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/dashboard-responsive.css') }}"> {{-- Custom CSS --}}
    @include('frontend.layouts.partials.custom.code-css') {{-- Page Specific Extra Styles --}} @yield('styles') @stack('styles')
</head>
