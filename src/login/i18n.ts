/* eslint-disable @typescript-eslint/no-unused-vars */
import { i18nBuilder } from "keycloakify/login";
import type { ThemeName } from "../kc.gen";

/** @see: https://docs.keycloakify.dev/features/i18n */
const { useI18n, ofTypeI18n } = i18nBuilder.withThemeName<ThemeName>()
.withCustomTranslations({
    fr: {
        registerTitle: "Créer un compte",
        email: "Adresse e-mail",
        username: "Adresse e-mail",
        password: "Mot de passe",
        passwordConfirm: "Confirmer le mot de passe",
        doLogIn: "Se connecter",
        doRegister: "S'inscrire",
        backToLogin: "Retour à la page d'accueil",
}

})
.build();

type I18n = typeof ofTypeI18n;

export { useI18n, type I18n };
