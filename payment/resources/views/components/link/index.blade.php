@props(['href' => false])

<a {{ $attributes->merge(['class' => 'block py-2 font-bold text-center border rounded-[0.303rem] uppercase transitio-all ease-in duration-200']) }} href="{{ $href }}">
    {{ $slot }}
</a>
