@php use App\Enums\KycStatus; @endphp
<!DOCTYPE html>
    <html lang="{{ app()->getLocale() }}">

    {{-- Head Include Here --}}
    @include('frontend.layouts.user.partials._head')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css"/>
    <style>
        .left-menu-box li .active{
            background: #e6513e;
        }

        .left-menu-box li a:hover{
            background: #fbc76a !important;
        }

        .mobile-navbar-area, .footer-area-mobile{
            background: #e4422d !important;
        }
        .footer-area-mobile > ul > li > a > span{
            font-size: 12px !important;
            opacity: 1 !important;
            color: white !important;
        }

        .footer-area-mobile> ul> li> a> svg{
            color: white !important;
        }
    </style>
<style>
    /* Make the search input cleaner */
    .dataTables_filter input {
        border-radius: 4px;
        border: 1px solid #ced4da;
        padding: 6px 10px;
        font-size: 14px;
        width: 200px;
    }

    /* Adjust pagination buttons */
    .dataTables_wrapper .dataTables_paginate .paginate_button {
        padding: 5px 12px;
        margin-left: 3px;
        border-radius: 4px;
        border: 1px solid transparent;
    }

    .dataTables_wrapper .dataTables_paginate .paginate_button.current {
        background-color: #0d6efd; /* Bootstrap primary */
        color: white !important;
        border: 1px solid #0d6efd;
    }

    .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
        background-color: #0b5ed7;
        color: white !important;
        border: 1px solid #0b5ed7;
        cursor: pointer;
    }

</style>
    <body>

    {{-- Header Include Here --}}
    @include('frontend.layouts.user.partials._navbar')

    {{-- Mobile Navbar Include Here --}}
    @include('frontend.layouts.user.partials._mobile_navbar')


    {{-- Main Area Here --}}
    <div id="mainArea" class="main-area mb-30">
        <div class="container-fluid">
            <div class="row wrapper fixed-wrapper">
                {{-- left bar --}}
                <div class="col-xl-3 col-lg-4 sidebar">
                    {{-- left bar wallet card --}}
                    @include('frontend.user.dashboard.partials._left_bar_card')

                    {{-- left bar menu --}}
                    @include('frontend.user.dashboard.partials._left_bar_menu')
                </div>


                <div class="col-xl-9 col-lg-8  main-content @if(!request()->routeIs('user.dashboard')) mt-neg-120 @endif">
                    {{-- kyc notice card --}}
                    @if(!auth()->user()->kycSubmission || auth()->user()->kycSubmission->status !== KycStatus::APPROVED)
                        @if(isActive('user.settings.kyc.verify') !== 'active')
                            @include('frontend.user.dashboard.partials._kyc_notice_card')
                        @endif
                    @endif

                    {{-- content area --}}
                    @yield('content')
                </div>
            </div>
        </div>
    </div>

    {{-- Footer Mobile Include here --}}
    @include('frontend.layouts.user.partials._footer_mobile')

    {{-- Scripts Include here --}}
    @include('frontend.layouts.user.partials._script')

    </body>
</html>
