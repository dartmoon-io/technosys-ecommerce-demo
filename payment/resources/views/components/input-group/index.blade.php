@props(['hasError' => false])

<div {{ $attributes->class(['error' => $hasError]) }}>
    @if ($label ?? '')
        <label class="block text-xs">{{ $label }}</label>
    @endif
    <div class="relative">
        {{ $slot }}
    </div>

    @if ($error ?? false)
        {{ $error }}
    @endif
</div>
