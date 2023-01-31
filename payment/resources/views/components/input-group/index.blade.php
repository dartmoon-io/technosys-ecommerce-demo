@props(['hasError' => false, 'errorMessage' => ''])

<div {{ $attributes->class(['error' => $hasError]) }}>
    @if ($label ?? '')
        <label class="block text-xs">{{ $label }}</label>
    @endif
    <div class="relative">
        {{ $slot }}
    </div>

    @if ($hasError && $errorMessage)
        <x-input-group.error>{{ $errorMessage }}</x-input-group.error>
    @endif

    @if ($error ?? false)
        {{ $error }}
    @endif
</div>
