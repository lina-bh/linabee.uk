/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
  theme: {
    extend: {
      colors: {
        "primary-purple": "#a855f7",
        "subtitle-grey": "#4b5563",
        "link-grey": "#6b7280",
        "muted-grey": "#9ca3af",
        "fullbright-blue": "#0000ff",
        "fullbright-teal": "#00ffff",
      },
      fontFamily: {
        sans: ["Arial", "sans-serif"],
        mono: 'Menlo, Monaco, Consolas, "Liberation Mono", monospace',
      },
    },
  },
  plugins: [],
};
