<style>
    .single-amount-card a {
        border: 1px solid #ffffff;
    }
</style>
<div class="single-amount-card-area mb-3">
    <div class="row">
        @foreach ($statistics as $statistic)
            <div class="col-xl-4 col-lg-6 col-4">
                <div class="single-amount-card" style="background: #ed4c33">
                    <div class="media">
                        <div class="media-left icon-container {{ $statistic['color_class'] }}"> <x-icon
                                name="{{ $statistic['icon'] }}" class="icon" /> </div>
                        <div class="media-body align-self-center">
                            <h6 class="text-white">{{ $statistic['value'] }}</h6> <span
                                class="text-white">{{ $statistic['title'] }}</span>
                        </div>
                    </div>
                    @if (isset($statistic['link']))
                        <a class="text-white" href="{{ $statistic['link'] }}"> <x-icon name="arrow-icon"
                                class="icon" /> </a>
                    @endif
                </div>
            </div>
        @endforeach
    </div>
</div>
