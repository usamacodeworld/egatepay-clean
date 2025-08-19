<div class="mb-4">
    {{-- Main title for medium and larger devices --}}
    <h6 class="main-title text-white-small d-none d-md-block">
        {{ __('Last 7 Days :type Statistics', ['type' => $trxType->label()]) }}</h6>

    {{-- Toggle button for small devices --}}
    <button class="btn btn-primary d-block d-md-none mb-2 w-100 d-flex align-items-center justify-content-between"
        type="button" data-bs-toggle="collapse" data-bs-target="#statsCollapse" aria-expanded="false"
        aria-controls="statsCollapse">
        <span>{{ __('Last 7 Days :type Statistics', ['type' => $trxType->label()]) }}</span>
        <span id="arrowIcon" class="arrow-icon svg-white">
            <x-icon name="angle-down" class="icon" />
        </span>
    </button>

    {{-- Stats section (collapsed on small devices, visible on md and larger) --}}
    <div id="statsCollapse" class="collapse d-md-block">
        <div class="stats-wrapper">
            <div class="row summery-row">
                @foreach (featureStatistics($trxType) as $statistic)
                    @php
                        // Determine change type, class, icon and formatted value.
                        if ($statistic['value_change'] > 0) {
                            $changeClass = 'positive';
                            $iconName = 'chart-up';
                            $formattedChange = '+' . siteCurrency('symbol') . $statistic['value_change'];
                        } elseif ($statistic['value_change'] < 0) {
                            $changeClass = 'negative';
                            $iconName = 'chart-down';
                            $formattedChange = siteCurrency('symbol') . $statistic['value_change'];
                        } else {
                            $changeClass = 'info';
                            $iconName = 'chart';
                            $formattedChange = siteCurrency('symbol') . $statistic['value_change'];
                        }
                    @endphp

                    <div class="col-12 col-md-4 stat-column">
                        <div class="d-flex justify-content-between align-items-start">
                            {{-- Stat value --}}
                            <h5 class="stat-number">{{ siteCurrency('symbol') . $statistic['value'] }}</h5>
                            {{-- Stat icon --}}
                            <div class="icon-circle {{ $statistic['color_class'] }}">
                                <x-icon name="{{ $statistic['icon'] }}" class="icon" />
                            </div>
                        </div>
                        <p class="stat-label">{{ $statistic['title'] }}</p>
                        <p class="stat-change">
                            <span class="{{ $changeClass }}">
                                <x-icon name="{{ $iconName }}" class="icon" height="20" width="20" />
                                {{ __(':value This week', ['value' => $formattedChange]) }}
                            </span>
                        </p>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
