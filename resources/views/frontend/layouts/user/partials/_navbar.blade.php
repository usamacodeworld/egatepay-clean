<header class="navbar-area d-lg-block d-none">
    <div class="container">
        <div class="navbar-wrap">
            <div class="row">
                <div class="col-xl-5 col-5 align-self-center">
                    <div class="logo-area d-flex align-items-center"> <a class="d-lg-inline-block d-none"
                            href="{{ route('home') }}"> <img style="width: 35%;"
                                src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/E-gatepay-logo-NaOCHgGrTsVTCS5De4gqN65gJH5tJL.png"
                                alt="img">
                        </a> <a class="d-lg-none d-inline-none" href="{{ route('home') }}"> <img style="width: 35%;"
                                src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/E-gatepay-logo-NaOCHgGrTsVTCS5De4gqN65gJH5tJL.png"
                                alt="img">
                        </a>
                    </div>
                </div>
                <div class="col-xl-7 col-7 text-end align-self-center">
                    <ul class="header-right align-self-center pb-0 mb-0">
                        <li class="flex-grow-1" style="max-width: 220px;">
                            <div class="payable_amount_alert alert alert-info fw-semibold d-flex align-items-center justify-content-center py-1 px-2"
                                style="font-size: 13px; border-radius: 8px; margin: 0;"> <!-- ✅ Vertically centered -->
                                <div class="text-truncate" style="max-width: 200px;">
                                    <i class="fa fa-money-bill-wave me-2"></i>
                                    {{ auth()->user()->payable_amount && auth()->user()->payable_amount > 0
                                        ? 'Payable: $' . number_format(auth()->user()->payable_amount, 2)
                                        : 'No payable amount.' }}
                                </div>
                            </div>
                        </li>
                        @include('frontend.layouts.user.partials._author_card')
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
