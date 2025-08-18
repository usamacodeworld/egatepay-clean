@php    $currentLanguage = $languages->firstWhere('code', app()->getLocale());@endphp{{-- Desktop Language Selector --}}
<div class="lang">
    <div class="dropdown"><a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"> <img
                    class="mx-2" src="{{ asset($currentLanguage->flag) }}" height="24" width="24"
                    alt="{{ $currentLanguage->name }}">
            <span>                {{ $currentLanguage->name }}            </span> </a>
        <ul class="dropdown-menu">            @foreach($languages as $language)
                <li><a href="{{ route('locale-set', $language->code) }}"
                       class="dropdown-item d-flex align-items-center {{ $language->code == app()->getLocale() ? 'active' : '' }}">
                        <img class="icon me-2" src="{{ asset($language->flag) }}"
                             alt="{{ $language->name }}"> {{ $language->name }}                </a></li>
            @endforeach        </ul>    </div></div>
