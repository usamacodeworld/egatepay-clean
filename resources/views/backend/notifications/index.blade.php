@extends('backend.layouts.app')
@section('title', __('Notifications'))
@section('content') <div class="py-4">
        <div class="d-flex justify-content-between w-100 flex-wrap align-items-center">
            <div class="mb-3 mb-lg-0">
                <h1 class="h4">🔔 {{ __('Notifications') }}</h1>
            </div>
            <div> <a href="{{ route('admin.notifications.markAllAsRead') }}" class="btn  btn-primary"> <i
                        class="fa fa-check-double me-1 me-1"></i> {{ __('Mark all as read') }} </a> </div>
        </div>
    </div>
    <div class="card border-0 shadow-sm">
        <div class="card-body p-0">
            <div class="list-group list-group-flush">
                @forelse($notifications as $notification)
                    @php
                        $data = $notification->data;
                        $sender = $data['sender'] ?? null;
                        $isUnread = is_null($notification->read_at);
                    @endphp <div
                        class="list-group-item px-4 py-3 d-flex gap-3 align-items-start notification-item {{ $isUnread ? 'unread' : '' }}">
                        {{-- Avatar --}} <div class="flex-shrink-0"> <img src="{{ asset($sender['avatar']) }}"
                                alt="avatar" class="rounded-circle notification-avatar-img"> </div> {{-- Content --}}
                        <div class="flex-grow-1"> <a
                                href="{{ $notification->data['action_link'] ?? 'javascript:void(0);' }}"
                                data-id="{{ $notification->id }}" class="text-decoration-none read-notification">
                                <div class="fw-semibold text-dark mb-1"> {{ $notification->data['title'] }} </div>
                            </a>
                            <div class="text-muted small">{{ $notification->data['message'] }}</div>
                        </div> {{-- Time + Unread indicator --}} <div class="text-end d-flex flex-column align-items-end"> <small
                                class="text-muted">{{ $notification->created_at->format('d M, Y h:i A') }}</small>
                            @if ($isUnread)
                                <i class="fa-solid fa-bell text-warning  mt-1" title="Unread"></i>
                            @endif
                        </div>
                </div> @empty <div class="p-4 text-center text-muted"> {{ __('No Notification found') }} </div>
                    @endforelse @if ($notifications->hasPages())
                        <div class="border-top px-4 py-3">
                            <div class="d-flex justify-content-end"> {{ $notifications->links() }} </div>
                        </div>
                    @endif
            </div>
        </div>
</div>
@endsection
@push('scripts')
@include('backend.notifications.partials._scripts')
@endpush
