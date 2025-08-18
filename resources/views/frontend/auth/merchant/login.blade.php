@extends('frontend.layouts.auth')
@section('title', __('Login to your account'))
@section('auth-content')
    <style>
        @media (max-width: 768px) {
            .auth-page {
                background-attachment: scroll !important;
            }
        }

    </style>
    <div class="auth-page d-flex align-items-center justify-content-center"
         style="background: url('{{ asset('new_frontend/asset/images/login-bg.jpg') }}') no-repeat center center;
            background-size: cover;
            background-attachment: fixed;
            min-height: 100vh;">

    <div class="login-card rounded shadow p-4">
            <div class="text-center mb-4">
                {{-- Logo --}}
                <img src="{{ asset(setting('logo')) }}" alt="Logo" class="img-fluid mb-2 login-logo">
                <h4 class="fw-bold">{{ __('Login to your account') }}</h4>
                <p class="text-muted mb-0">
                    {{ __('Sign in to your merchant account with') }} {{ setting('site_title') }}
                </p>
                @if(Session::has('success'))
                <div class="mt-2 mb-3">
                    <span class="badge bg-success p-2" style="color: #e6513e !important;">
                        <i class="fa-duotone fa-store me-1"></i> {{session('success')}}
                    </span>
                </div>
                @endif
            </div>

            {{-- Login Form --}}
            <form action="{{ route('merchant.login') }}" method="post">
                @csrf
                {{-- Login Field --}}
                <div class="mb-3">
                    <label for="login" class="form-label fw-semibold">
                        {{ __('E-mail Or Username') }}
                    </label>
                    <div class="input-group">
                        <span class="input-group-text">
                            <i class="fas fa-user"></i>
                        </span>
                        <input type="text" name="login" class="form-control" id="login" placeholder="{{  __('E-mail Or Username')}}" required>
                    </div>
                </div>

                {{-- Password Field --}}
                <div class="mb-3">
                    <label for="password" class="form-label fw-semibold">
                        {{ __('Password') }}
                    </label>
                    <div class="input-group">
                        <span class="input-group-text">
                            <i class="fas fa-lock"></i>
                        </span>
                        <input type="password" name="password" class="form-control border-end-0" id="password" placeholder="{{ __('Password') }}" required>
                        <span class="input-group-text bg-transparent cursor-pointer" id="togglePassword">
                            <i class="fas fa-eye"></i>
                        </span>
                    </div>
                </div>

                {{-- Remember Me & Forgot Password --}}
                <div class="d-flex justify-content-between align-items-center my-3">
                    <div class="form-check sm-mb-text">
                        <input class="form-check-input" type="checkbox" id="rememberMe">
                        <label class="form-check-label" for="rememberMe">
                            {{ __('Remember Me') }}
                        </label>
                    </div>
                    <a href="{{ route('merchant.password.request') }}" class="text-decoration-none text-primary fw-semibold sm-mb-text">
                        {{ __('Forgot Password') }}?
                    </a>
                </div>

                @if(config('services.recaptcha.status'))
                    <div class="g-recaptcha mt-4 mb-4" data-sitekey="{{ config('services.recaptcha.key') }}"></div>
                @endif

                {{-- Login Button --}}
                <button class="btn btn-success w-100 sm-mb-text" type="submit" style="background: #e6513e">
                    <i class="fa-light fa-right-to-bracket"></i>
                    {{ __('Login') }}
                </button>
            </form>

            {{-- Sign Up Link --}}
            <p class="text-center mt-4 mb-0 sm-mb-text">
                {{ __("Don't have an account?") }}
                <a href="{{ route('merchant.register') }}" class="text-decoration-none text-success fw-semibold" style="color: #e6513e !important;">
                    {{ __('Apply Now') }}
                </a>
            </p>

            {{-- User Login Link --}}
{{--            <div class="border-top mt-4 pt-3">--}}
{{--                <p class="text-center mb-0 sm-mb-text">--}}
{{--                    {{ __("Are you a regular user?") }}--}}
{{--                    <a href="{{ route('user.login') }}" class="text-decoration-none text-primary fw-semibold">--}}
{{--                        <i class="fa-duotone fa-user me-1"></i> {{ __('User Login') }}--}}
{{--                    </a>--}}
{{--                </p>--}}
{{--            </div>--}}
        </div>
    </div>
@endsection
@push('scripts')
    <script async src="https://www.google.com/recaptcha/api.js"></script>
@endpush
