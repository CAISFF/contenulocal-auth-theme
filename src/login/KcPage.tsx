import { Suspense, lazy } from "react";
import type { ClassKey } from "keycloakify/login";
import type { KcContext } from "./KcContext";
import { useI18n } from "./i18n";
import DefaultPage from "keycloakify/login/DefaultPage";
import Template from "keycloakify/login/Template";
const UserProfileFormFields = lazy(
    () => import("keycloakify/login/UserProfileFormFields")
);

// Bootstrap + custom styles
import "bootstrap/dist/css/bootstrap.min.css";
import "./main.css";

const doMakeUserConfirmPassword = true;

export default function KcPage(props: { kcContext: KcContext }) {
    const { kcContext } = props;

    const { i18n } = useI18n({ kcContext });

    return (
        <Suspense>
            {(() => {
                switch (kcContext.pageId) {
                    default:
                        return (
                            <DefaultPage
                                kcContext={kcContext}
                                i18n={i18n}
                                classes={classes}
                                Template={Template}
                                doUseDefaultCss={false}
                                UserProfileFormFields={UserProfileFormFields}
                                doMakeUserConfirmPassword={doMakeUserConfirmPassword}
                            />
                        );
                }
            })()}
        </Suspense>
    );
}

// Map Keycloakify classes to Bootstrap classes
const classes = {
    // Layout
    kcHtmlClass: "",
    kcBodyClass: "",
    kcLoginClass: "d-flex align-items-center flex-column justify-content-center min-vh-100 position-relative",

    // Header
    kcHeaderWrapperClass: "",

    // Locale dropdown
    kcLocaleMainClass: "",
    kcLocaleWrapperClass: "dropdown",
    kcLocaleListClass: "dropdown-menu dropdown-menu-end",
    kcLocaleItemClass: "dropdown-item",

    // Card / Form container
    kcFormCardClass: "card shadow-lg border-0",
    kcFormHeaderClass: "card-header bg-transparent border-0 text-center pt-4 pb-0",
    kcFormGroupClass: "mb-3",

    // Labels
    kcLabelClass: "form-label",
    kcLabelWrapperClass: "",

    // Inputs
    kcInputClass: "form-control form-control-lg",
    kcInputWrapperClass: "",
    kcInputGroup: "input-group",

    // Buttons
    kcButtonClass: "btn",
    kcButtonPrimaryClass: "btn btn-primary btn-lg w-100",
    kcButtonDefaultClass: "btn btn-outline-secondary",
    kcButtonLargeClass: "btn-lg",
    kcButtonBlockClass: "w-100",

    // Form options (remember me, forgot password)
    kcFormOptionsClass: "d-flex justify-content-between align-items-center mb-3",
    kcFormOptionsWrapperClass: "",
    kcFormSettingClass: "form-check",

    // Checkboxes
    kcCheckboxInputClass: "form-check-input",
    kcCheckLabelClass: "form-check-label",

    // Alerts
    kcAlertClass: "alert",
    kcAlertTitleClass: "alert-heading",
    kcFeedbackErrorIcon: "bi bi-exclamation-circle",
    kcFeedbackWarningIcon: "bi bi-exclamation-triangle",
    kcFeedbackSuccessIcon: "bi bi-check-circle",
    kcFeedbackInfoIcon: "bi bi-info-circle",

    // Social providers
    kcFormSocialAccountListClass: "list-unstyled d-grid gap-2",

    // Info/registration section
    kcInfoAreaWrapperClass: "text-center mt-4",

    // Links
    kcFormButtonsClass: "d-grid gap-2 mt-4",
} satisfies { [key in ClassKey]?: string };
