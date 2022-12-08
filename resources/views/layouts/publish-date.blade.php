@php
    $created = now()->diffInDays($listing->created_at, true);
@endphp
@if ($created == 0)
    {{ 'Published today' }}
@else
    {{ 'Published ' . $created . ' day ago' }}
@endif
