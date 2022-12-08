@if ($listing->tags != '')
    @foreach (explode(',', $listing->tags) as $tag)
        @if ($loop->even)
            <a href="#"
                class="px-3 py-1 border border-red-300 rounded-full text-red-300 text-xs uppercase font-semibold"
                style="font-size: 10px">
                {{ $tag }}
            </a>
        @else
            <a href="#"
                class="px-3 py-1 border border-blue-300 rounded-full text-blue-300 text-xs uppercase font-semibold"
                style="font-size: 10px">
                {{ $tag }}
            </a>
        @endif
    @endforeach
@endif
