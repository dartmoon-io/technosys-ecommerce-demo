@props(['checked' => false])

<div class="radio-control">
    <input {{ $attributes }} @checked($checked) type="radio">
    {{ $slot }}
</div>
