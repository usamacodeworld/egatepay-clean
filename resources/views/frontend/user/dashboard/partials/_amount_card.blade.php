<style>
    .single-amount-card a {
        border: 1px solid #ffffff;
    }

    .collections-card {
        background: #fff;
        border-radius: 12px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
        max-width: 400px;
        /* margin: 40px 0px; */
    }

    .collections-title {
        font-weight: 600;
        color: #ec6342;
        font-size: 18px;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 8px;
        margin-bottom: 10px;
    }

    .section-title {
        color: #ec6342;
        font-weight: 600;
        font-size: 16px;
        margin-top: 15px;
        text-align: start;
    }

    .value {
        font-size: 18px;
        font-weight: 600;
        color: #000;
    }

    .divider {
        border-left: 1px solid #ddd;
        height: 50px;
        margin: auto;
    }

    /* Single Amount Card Styling */
    .single-amount-card {
        display: flex;
        align-items: center;
        gap: 12px;
        background: #fff;
        padding: 12px;
        border-radius: 12px;
        box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px !important;
    }

    /* Icon styling */
    .single-amount-card .icon-container i {
        color: #ec6342;
        border: 1px solid #ec6342;
        border-radius: 28px;
        padding: 8px;
        font-size: 18px;
    }

    /* Amount & Description container */
    .single-amount-card .media-body {
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    /* Amount Styling */
    .single-amount-card .media-body h6 {
        font-size: 18px;
        font-weight: 700;
        margin: 0;
    }

    /* Description Styling */
    .single-amount-card .media-body span {
        font-size: 14px;
        color: #555;
        margin-top: 2px;
    }

    /* Mobile Responsive Fix */
    @media (max-width: 767px) {
        .single-amount-card {
            flex-direction: row;
            /* Icon + Amount inline */
            align-items: center;
        }

        .single-amount-card .media-body {
            display: flex;
            flex-direction: column;
        }

        .single-amount-card .media-body h6 {
            font-size: 16px;
        }
    }
</style>
<div class="single-amount-card-area mb-3">
    <div class="row">
        <div class="col-md-4 col-12 mb-3">
            <div class="single-amount-card">
                <div class="icon-container">
                    <i class="fa-solid fa-dollar-sign"></i>
                </div>
                <div class="media-body">
                    <h6>${{ number_format($todayTotal) }}</h6>
                    <span>Day's Collection</span>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 mb-4 mt-2">
                <center>
                    <div class="collections-card" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                        <div class="collections-title">
                            <i class="fa-solid fa-money-bill-1-wave" style="color: ec6342"></i>
                            Collections
                        </div>

                        <!-- Card Section -->
                        <div class="section-title">Card</div>
                        <div class="row mb-2 text-start">
                            <div class="col-6" style="border-right: 2px solid #ec6342;">
                                <small>Collections (Month to Date)</small>
                                <div class="value">$ {{ number_format($card_month_to_date) }}</div>
                            </div>
                            <div class="col-6">
                                <small>Collections (All processed)</small>
                                <div class="value">$ {{ number_format($card_all_processed) }}</div>
                            </div>
                        </div>

                        <!-- Divider -->
                        <hr>

                        <!-- Mobile Section -->
                        <div class="section-title">Mobile</div>
                        <div class="row text-start">
                            <div class="col-6" style="border-right: 2px solid #ec6342;">
                                <small>Collections (Month to Date)</small>
                                <div class="value">$ {{ number_format($mobile_month_to_date) }}</div>
                            </div>
                            <div class="col-6">
                                <small>Collections (All processed)</small>
                                <div class="value">$ {{ number_format($mobile_all_processed) }}</div>
                            </div>
                        </div>
                    </div>
                </center>
            </div>
            <div class="col-md-6 mb-4 mt-2">
                <center>
                    <div class="collections-card" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                        <div class="collections-title">
                            <i class="fa-solid fa-money-bill-1-wave" style="color: green"></i>
                            Disbursals/Payouts
                        </div>

                        <!-- Card Section -->
                        <div class="section-title">Card</div>
                        <div class="row mb-2 text-start">
                            <div class="col-6" style="border-right: 2px solid #ec6342;">
                                <small>Payouts (Month to Date)</small>
                                <div class="value">$ {{ number_format($payouts_month_to_date) }}</div>
                            </div>
                            <div class="col-6">
                                <small>Payouts (All processed)</small>
                                <div class="value">$ {{ number_format($payouts_all_processed) }}</div>
                            </div>
                        </div>

                        <!-- Divider -->
                        <hr>

                        <!-- Mobile Section -->
                        <div class="section-title">Mobile</div>
                        <div class="row text-start">
                            <div class="col-6" style="border-right: 2px solid #ec6342;">
                                <small>Disbursals (Month to Date)</small>
                                <div class="value">$ {{ number_format($disbursals_month_to_date) }}</div>
                            </div>
                            <div class="col-6">
                                <small>Disbursals (All processed)</small>
                                <div class="value">$ {{ number_format($disbursals_all_processed) }}</div>
                            </div>
                        </div>
                    </div>
                </center>
            </div>
        </div>

        <div class="card mb-4">
            <div class="card-body">
                <h5 class="card-title text-center">Volume by Currency (Collections vs Disbursals)</h5>
                <canvas id="volumeByCurrencyChart" height="120"></canvas>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

        <script>
            const ctx1 = document.getElementById('volumeByCurrencyChart').getContext('2d');
            new Chart(ctx1, {
                type: 'bar',
                data: {
                    labels: ['Card', 'Mobile'],
                    datasets: [{
                            label: 'Collections',
                            data: [{{ $card_all_processed }}, {{ $mobile_all_processed }}],
                            backgroundColor: '#4CAF50'
                        },
                        {
                            label: 'Disbursals',
                            data: [{{ $payouts_all_processed }}, {{ $disbursals_all_processed }}],
                            backgroundColor: '#EC6342'
                        }
                    ]
                },
                options: {
                    responsive: true,
                    plugins: {
                        legend: {
                            position: 'top'
                        },
                        tooltip: {
                            callbacks: {
                                label: (ctx) => '$' + ctx.formattedValue
                            }
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true,
                            ticks: {
                                callback: (value) => '$' + value
                            }
                        }
                    }
                }
            });
        </script>

        <div class="card mb-4">
            <div class="card-body">
                <h5 class="card-title text-center">Daily Volume vs Transaction Count</h5>
                <canvas id="dailyVolumeChart" height="120"></canvas>
            </div>
        </div>

        <script>
            const ctx2 = document.getElementById('dailyVolumeChart').getContext('2d');
            new Chart(ctx2, {
                type: 'line',
                data: {
                    labels: @json($dates),
                    datasets: [{
                            label: 'Volume',
                            data: @json($dailyVolumes),
                            borderColor: '#4CAF50',
                            fill: false,
                            tension: 0.4
                        },
                        {
                            label: 'Transactions',
                            data: @json($dailyTrxCounts),
                            borderColor: '#2196F3',
                            fill: false,
                            tension: 0.4
                        }
                    ]
                },
                options: {
                    responsive: true,
                    plugins: {
                        legend: {
                            position: 'top'
                        },
                        tooltip: {
                            callbacks: {
                                label: (ctx) => ctx.dataset.label + ': ' + ctx.formattedValue
                            }
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        </script>

        <div class="card mb-4">
            <div class="card-body">
                <h5 class="card-title text-center">Weekly Volume vs Transaction Count</h5>
                <canvas id="weeklyVolumeChart" height="120"></canvas>
            </div>
        </div>

        <script>
            const ctx3 = document.getElementById('weeklyVolumeChart').getContext('2d');
            new Chart(ctx3, {
                type: 'line',
                data: {
                    labels: @json($weeks),
                    datasets: [{
                            label: 'Volume',
                            data: @json($weeklyVolumes),
                            borderColor: '#FF9800',
                            fill: false,
                            tension: 0.4
                        },
                        {
                            label: 'Transactions',
                            data: @json($weeklyTrxCounts),
                            borderColor: '#3F51B5',
                            fill: false,
                            tension: 0.4
                        }
                    ]
                },
                options: {
                    responsive: true,
                    plugins: {
                        legend: {
                            position: 'top'
                        },
                        tooltip: {
                            callbacks: {
                                label: (ctx) => ctx.dataset.label + ': ' + ctx.formattedValue
                            }
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        </script>



    </div>
</div>
