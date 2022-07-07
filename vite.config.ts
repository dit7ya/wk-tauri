import { defineConfig } from "vite";
import { svelte } from "@sveltejs/vite-plugin-svelte";
import UnoCss from "unocss/vite";
import { presetUno } from "unocss";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    UnoCss({
      //include: [/\.svelte$/],
      presets: [presetUno()],
    }),
    svelte(),
  ],
});
