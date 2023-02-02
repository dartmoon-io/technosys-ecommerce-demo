<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Tecnosys</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700;900&display=swap" rel="stylesheet">

        {{-- Compiled styles and scripts --}}
        @vite('resources/scss/app.scss')
        @vite('resources/js/app.js')
    </head>
    <body class="antialiased">
        <div {{ $attributes->merge(['class' => 'relative w-full min-h-screen py-10 z-10']) }}>
            {{ $slot }}
            <img class="absolute top-0 left-0 w-full h-screen z-[-10]" src="/background/bg-primario.png" alt="Background_image">
        </div>
    </body>
</html>
