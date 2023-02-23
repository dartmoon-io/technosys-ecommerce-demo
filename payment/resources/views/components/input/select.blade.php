<select {{ $attributes->merge(['class' => 'w-full pl-5 pr-10 py-4 border border-[#d0d2d7] rounded-[10px] bg-white focus-visible:outline-primary appearance-none pointer-events-auto dark:text-[#f4f4f4] dark:bg-[#2B2C33]']) }}>
    {{ $slot }}
</select>
<div class="absolute flex items-center h-[58px] right-5 bottom-0 rounded-full pointer-events-none"><i class="fa-solid fa-caret-down fa-xl text-[#d0d2d7] dark:text-[#414452] pointer-events-none"></i></div>
