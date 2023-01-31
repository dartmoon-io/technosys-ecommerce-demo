@props(['method' => 'post'])

@php
    $method = strtolower($method);
    $methodProp = in_array($method, ['get', 'post']) ? $method : 'post';
@endphp

<form {{ $attributes }} method="{{ $methodProp }}">
    @if ($method !== 'get')
        @csrf
        @method($method)
    @endif

    {{ $slot }}
</form>
