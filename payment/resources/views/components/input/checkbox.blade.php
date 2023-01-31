{{-- <input {{ $attributes }}> --}}

@props([
    'class' => '',
    'name' => false,
])

<label @class(['flex w-full h-full items-center font-sans text-black', $class])>
    <input {{ $attributes }} class="form-check-input w-6 h-6 mr-4 appearance-none border text-white border-[#d0d2d7] rounded-[5px] bg-white checked:bg-primary-dim checked:border-primary-dim focus:outline-none transition duration-200 cursor-pointer"
        type="checkbox"
        @if ($name ?? false) name="{{ $name }}" @endif
    >
    {{ $slot}}
</label>
