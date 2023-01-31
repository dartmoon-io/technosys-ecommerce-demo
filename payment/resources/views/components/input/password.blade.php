@props(['class' => ''])

<div @class($class) x-data="{visible: false}">
    <input
        {{ $attributes }}
        class="w-full pl-5 py-4 pr-10 text-black border border-[#d0d2d7] rounded-[10px] focus-visible:outline-primary error:border-red-400 dark:text-[#f4f4f4] dark:bg-[#2B2C33]"
        :type="visible ? 'text' : 'password'"
    >
    <a @click.prevent="visible = !visible" class="absolute flex items-center h-[58px] right-5 bottom-0 hover:cursor-pointer"><i class="fa-solid fa-xl text-[#d0d2d7] dark:text-[#414452]" :class="visible ? 'fa-eye-slash' : 'fa-eye'"></i></a>
</div>
