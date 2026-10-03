import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import { keycloakify } from "keycloakify/vite-plugin";

// https://vitejs.dev/config/
export default defineConfig({
    plugins: [
        react(),
        keycloakify({
            accountThemeImplementation: "none",
            // Named explicitly: the theme name is what the Keycloak realm selects, so it must not
            // drift with the npm package name.
            themeName: "contenulocal"
        })
    ]
});
