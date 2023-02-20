const plugin = require('tailwindcss/plugin')

/** @type {import('tailwindcss').Config} */
module.exports = {
    mode: 'jit',
    content: [
        "./resources/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
    ],
    theme: {
        extend: {
            container: {
                centered: true,
                padding: '1rem',
            },
            textColor: {
                'black': '#222222'
            },

            colors: {
                'primary': '#BE3455',
                'light-gray': '#D5C9CD',
                'success': '#36932E',
                'error': '#C32727',
            },
        },
    },
    plugins: [
        plugin(({ addVariant }) => {
            addVariant('current', ['&.current', '.current &'])
            addVariant('error', ['&.error', '.error &'])
        })
    ],
}
