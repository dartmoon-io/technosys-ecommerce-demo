@props([
    'rows' => '4',
    'cols' => '50',
    'value' => '',
])

<textarea
    {{ $attributes->merge(['class' => 'w-full px-5 py-4 text-black border border-[#d0d2d7] rounded-[10px] focus-visible:outline-primary error:border-red-400 dark:text-[#f4f4f4] dark:bg-[#2B2C33]']) }}
    rows="{{ $rows }}"
    cols="{{ $cols }}"
>{{ $value }}</textarea>
