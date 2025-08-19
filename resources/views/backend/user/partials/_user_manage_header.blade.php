<ul class="nav nav-pills bg-light rounded p-1 mb-2">
    <li class="nav-item"> <a
            class="nav-link {{ isActive('admin.user.manage', ['username' => $user->username, 'param' => 'statistics']) }}"
            href="{{ route('admin.user.manage', ['username' => $user->username, 'param' => 'statistics']) }}"> <x-icon
                name="chart" height="18" width="18" /> {{ __('Statistics') }} </a> </li>
    <li class="nav-item"> <a
            class="nav-link {{ isActive('admin.user.manage', ['username' => $user->username, 'param' => 'info']) }}"
            href="{{ route('admin.user.manage', ['username' => $user->username, 'param' => 'info']) }}"> <x-icon
                name="user-info" height="18" width="18" /> {{ __('Information') }} </a> </li>
    <li class="nav-item"> <a
            class="nav-link {{ isActive('admin.user.manage', ['username' => $user->username, 'param' => 'transactions']) }}"
            href="{{ route('admin.user.manage', ['username' => $user->username, 'param' => 'transactions']) }}"> <x-icon
                name="transaction-3" height="18" width="18" /> {{ __('Transaction') }} </a> </li>
    @if ($user->isMerchant())
        <li class="nav-item"> <a
                class="nav-link {{ isActive('admin.user.manage', ['username' => $user->username, 'param' => 'merchants']) }}"
                href="{{ route('admin.user.manage', ['username' => $user->username, 'param' => 'merchants']) }}">
                <x-icon name="merchant" height="18" width="18" /> {{ __('merchants') }} </a> </li>
    @endif
    <li class="nav-item"> <a
            class="nav-link {{ isActive('admin.user.manage', ['username' => $user->username, 'param' => 'referrals']) }}"
            href="{{ route('admin.user.manage', ['username' => $user->username, 'param' => 'referrals']) }}"> <x-icon
                name="referral" height="18" width="18" /> {{ __('Referral') }} </a> </li>
    @can('support-list')
        <li class="nav-item"> <a
                class="nav-link {{ isActive('admin.user.manage', ['username' => $user->username, 'param' => 'tickets']) }}"
                href="{{ route('admin.user.manage', ['username' => $user->username, 'param' => 'tickets']) }}"> <x-icon
                    name="ticket-3" height="18" width="18" /> {{ __('Ticket') }} </a> </li>
    @endcan 
    <li class="nav-item"> <a
            class="nav-link  {{ isActive('admin.user.manage', ['username' => $user->username, 'param' => 'activities']) }}"
            href="{{ route('admin.user.manage', ['username' => $user->username, 'param' => 'activities']) }}"> <x-icon
                name="log" height="18" width="18" /> {{ __('Activity Log') }} </a> </li>
                 <li class="nav-item"> <a
            class="nav-link  {{ isActive('admin.user.manage', ['username' => $user->username, 'param' => 'settlements']) }}"
            href="{{ route('admin.user.manage', ['username' => $user->username, 'param' => 'settlements']) }}"> <x-icon
                name="log" height="18" width="18" /> {{ __('Settlements') }} </a> </li>
</ul>
