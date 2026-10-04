<#--
  This file has been claimed for ownership from @keycloakify/email-native version 260007.0.0.
  To relinquish ownership and restore this file to its original content, run the following command:

  $ npx keycloakify own --path "email/html/password-reset.ftl" --revert
-->

<#--
  The stock template rendered this mail as one paragraph and a text link. Same card-and-button
  structure as email-verification.ftl, so the family reads as one product.

  The greeting is guarded: `user` is populated in the reset-credentials flow, but a Freemarker error
  here would stop the mail being sent at all, which is worse than a missing first name.
-->
<#import "template.ftl" as layout>
<@layout.emailLayout>
    <h1 class="title" style="margin:0 0 16px 0; font-size:24px; line-height:1.3; font-weight:600; color:#212529; text-align:left;">
        ${msg("passwordResetTitle")}
    </h1>

    <#if user?? && user.firstName?? && user.lastName??>
        <p class="text" style="margin:0 0 16px 0; font-size:16px; line-height:1.6; color:#212529; text-align:left;">
            ${msg("passwordResetGreeting", user.firstName, user.lastName)}
        </p>
    </#if>

    <p class="text" style="margin:0 0 16px 0; font-size:16px; line-height:1.6; color:#212529; text-align:left;">
        ${msg("passwordResetInstructions", realmName)}
    </p>

    <div class="btn-wrapper" style="text-align:center; margin:32px 0;">
        <a href="${link}" class="btn" style="background:#1b5e3f; color:#ffffff; text-decoration:none; padding:14px 24px; border-radius:8px; display:inline-block; font-size:15px; font-weight:600; line-height:1;">
            ${msg("passwordResetButton")}
        </a>
    </div>

    <p class="small-text" style="margin:0; font-size:14px; line-height:1.6; color:#6c757d; text-align:left;">
        ${msg("passwordResetExpiration", linkExpirationFormatter(linkExpiration))}
    </p>

    <hr class="divider" style="border:none; border-top:1px solid #dee2e6; margin:32px 0;" />

    <p class="footer-text" style="margin:0; font-size:13px; line-height:1.6; color:#6c757d; text-align:left;">
        ${msg("passwordResetIgnore")}
    </p>
</@layout.emailLayout>
