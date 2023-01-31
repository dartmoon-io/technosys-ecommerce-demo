<input
    {{ $attributes->merge(['class' => 'w-full px-5 py-4 border border-[#d0d2d7] rounded-[10px] bg-white appearance-none pointer-events-auto focus-visible:outline-primary dark:text-[#f4f4f4] dark:bg-[#2B2C33]']) }}
    type="text"
    x-data="DatepickerState"
>
<div class="absolute flex items-center h-[58px] right-5 bottom-0 rounded-full pointer-events-none"><i class="fa-solid fa-calendar fa-xl text-[#d0d2d7] dark:text-[#414452] pointer-events-none"></i></div>
