@props([
    'class' => 'flex items-center text-black border rounded-[0.313rem] border-[#d0d2d7]',
    'disabled' => false
])

<div @class([$class])>
    <input {{ $attributes->merge(['class' => 'w-full p-3 text-xs rounded-[0.313rem] focus-visible:outline-primary error:border-error'])}} @disabled($disabled) >
    <div class="flex items-center rounded-tr-[0.313rem] rounded-br-[0.313rem] {{ $disabled ? 'bg-[#efefef4d]' : 'bg-white' }}">
        @if ($after ?? false)
            {{ $after }}
        @endif
    </div>
</div>
