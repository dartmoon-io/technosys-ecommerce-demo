@props(['title' => ''])

<div>
    @if ($title ?? '')
        <small class="text-xs"> {{ $title }} </small>
    @endif
    <p class="font-bold text-black text-base tracking-wide">
        {{ $slot }}
    </p>
</div>
