<#--
  This file has been claimed for ownership from @keycloakify/email-native version 260007.0.0.
  To relinquish ownership and restore this file to its original content, run the following command:
  
  $ npx keycloakify own --path "email/html/email-verification.ftl" --revert
-->

<#import "template.ftl" as layout>
<@layout.emailLayout>
<#--${kcSanitize(msg("emailVerificationBodyHtml",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration)))?no_esc}-->
    <h1 class="title" style="margin:0 0 16px 0; font-size:24px; line-height:1.3; color:#111827; text-align:left;">
        ${msg("emailVerificationTitle")}
    </h1>

    <p class="text" style="margin:0 0 16px 0; font-size:16px; line-height:1.6; text-align:left;">
        ${msg("emailVerificationGreeting", user.firstName, user.lastName)}
    </p>

    <p class="text" style="margin:0 0 16px 0; font-size:16px; line-height:1.6; text-align:left;">
        ${msg("emailVerificationAccountReady")}
    </p>

    <p class="text" style="margin:0 0 16px 0; font-size:16px; line-height:1.6; text-align:left;">
        ${msg("emailVerificationInstructions")}
    </p>

    <div class="btn-wrapper" style="text-align:center; margin:32px 0;">
        <a href="${link}" class="btn" style="background:#bd5d38; color:#ffffff; text-decoration:none; padding:14px 24px; border-radius:8px; display:inline-block; font-size:15px; font-weight:600; line-height:1;">
            ${msg("emailVerificationButton")}
        </a>
    </div>

    <p class="small-text" style="margin:0; font-size:14px; line-height:1.6; color:#6b7280; text-align:left;">
        🔒 ${msg("emailVerificationExpiration", linkExpirationFormatter(linkExpiration))}
    </p>

    <hr class="divider" style="border:none; border-top:1px solid #e5e7eb; margin:32px 0;" />

    <p class="footer-text" style="margin:0; font-size:13px; line-height:1.6; color:#6b7280; text-align:left;">
        ✉️ ${msg("emailVerificationIgnore")}
    </p>
</@layout.emailLayout>
