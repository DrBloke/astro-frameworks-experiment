import { defineConfig } from 'astro/config';
import elm from "astro-integration-elm";

// https://astro.build/config
import react from "@astrojs/react";

// https://astro.build/config
import svelte from "@astrojs/svelte";

// https://astro.build/config
export default defineConfig({
  integrations: [elm(), react(), svelte()]
});