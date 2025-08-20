@extends('backend.user.manage')@section('user_manage_content')
<div class="card-body px-0"> {{-- Filters --}} <div class="d-flex justify-content-end mb-3">
        <form action="{{ route('admin.user.manage', ['username' => $user->username, 'param' => 'activities']) }}"
            method="GET" class="row g-2 g-md-3"> {{-- Date Range Picker --}} 
            {{-- <div class="col-md-6 col-xl-auto"> <label
                    for="reportrange" class="form-label small">{{ __('Date Range') }}</label>
                <div class="input-group"> <input type="hidden" name="daterange" value="{{ request('daterange') }}">
                    <div id="reportrange" class="form-control d-flex align-items-center justify-content-between">
                        <div class="d-flex align-items-center gap-2"> <i class="fa-solid fa-calendar-days"></i> <span
                                class="text-nowrap flex-grow-1"></span> </div> <x-icon name="angle-down"
                            class="text-muted flex-shrink-0" />
                    </div>
                </div>
            </div>  --}}
            {{-- Search Input --}} <div class="col-md-6 col-xl-auto"> <label for="search"
                    class="form-label small">{{ __('Search') }}</label>
                <div class="input-group"> <input type="text" name="search" value="{{ request('search') }}"
                        class="form-control" placeholder="{{ __('Search...') }}"> <button type="submit"
                        class="btn btn-primary"> <i class="fa-solid fa-magnifying-glass"></i> </button> </div>
            </div>
        </form>
    </div> {{-- Transactions Table --}} <div class="table-responsive">
        <table class="table  border mb-0">
            <thead class="table-light fw-semibold">
                <tr class="align-middle text-nowrap">
                    <th>{{ __('Login Time') }}</th>
                    <th>{{ __('IP Address') }}</th>
                    <th>{{ __('Country') }}</th>
                    <th>{{ __('Browser | Platform') }}</th>
                </tr>
            </thead>
            <tbody>
                @forelse($activities as $activity)
                    @php                        $avatarData = getUserAvatarDetails($activity->user->first_name, $activity->user->last_name);                    @endphp <tr class="align-middle">
                        <td>
                            <div>{{ $activity->login_at->format('Y-m-d H:i') }}</div>
                            <div class="small text-muted">{{ $activity->login_at->diffForHumans() }}</div>
                        </td>
                        <td> {{ $activity->ip_address }} <a
                                href="https://whatismyipaddress.com/ip/{{ $activity->ip_address }}" target="_blank"
                                class="btn btn-link p-0" data-coreui-toggle="tooltip" data-coreui-placement="top"
                                title="Lookup IP"> <i class="fa-solid fa-search"></i> </a> </td>
                        <td>
                            <div class="text-truncate"> {{ $activity->country }} </div>
                        </td>
                        <td>
                            <div class="fw-bold"> {{ $activity->browser }} </div>
                            <div class="small text-muted"> {{ $activity->platform }} </div>
                        </td>
                </tr> @empty <tr>
                        <td colspan="5" class="text-center py-3">
                            <div class="text-center py-5"> <x-icon name="no-data-found" height="200" />
                                <h5 class="text-muted mt-2">{{ __('No Data found') }}</h5>
                            </div>
                        </td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div> {{-- Pagination --}} <div class="d-flex justify-content-end mt-3"> </div>
</div>
@endsection
