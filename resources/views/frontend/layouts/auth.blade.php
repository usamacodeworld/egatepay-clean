<!DOCTYPE html>
<html lang="en"> @include('frontend.layouts.user.partials._head')

<body>{{-- << Dynamic Content Show Here >> --}}<div class="auth-content bg-gray"> @yield('auth-content')</div>{{-- Notifications & Helpers --}}
    <script src="{{ asset('general/js/simple-notify.min.js') }}"></script>
    <script src="{{ asset('general/js/helpers.js?v=' . config('app.version')) }}"></script>{{-- Auth Script --}}
    <script src="{{ asset('frontend/js/auth.js') }}"></script>
    {{-- Global Notify Configuration --}}@include('general._notify_evs'){{-- Page Specific Scripts --}}@yield('scripts')@stack('scripts')
</body>

</html>
