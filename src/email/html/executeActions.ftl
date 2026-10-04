<#--
  This file has been claimed for ownership from @keycloakify/email-native version 260007.0.0.
  To relinquish ownership and restore this file to its original content, run the following command:

  $ npx keycloakify own --path "email/html/executeActions.ftl" --revert
-->

<#--
  The mail that carries the required actions: configure OTP, update password, accept the terms. The
  stock template rendered it as one paragraph and a text link; this gives it the same
  card-and-button structure as the rest of the family.

  `requiredActionsText` is built in a plainText block, as upstream does, so the action labels are
  escaped before being injected into the sentence.
-->
<#outputformat "plainText">
<#assign requiredActionsText><#if requiredActions??><#list requiredActions><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#sep></#items></#list></#if></#assign>
</#outputformat>

<#import "template.ftl" as layout>
<@layout.emailLayout>
    <h1 class="title" style="margin:0 0 16px 0; font-size:24px; line-height:1.3; font-weight:600; color:#212529; text-align:left;">
        ${msg("executeActionsTitle")}
    </h1>

    <#if user?? && user.firstName?? && user.lastName??>
        <p class="text" style="margin:0 0 16px 0; font-size:16px; line-height:1.6; color:#212529; text-align:left;">
            ${msg("executeActionsGreeting", user.firstName, user.lastName)}
        </p>
    </#if>

    <p class="text" style="margin:0 0 16px 0; font-size:16px; line-height:1.6; color:#212529; text-align:left;">
        ${msg("executeActionsInstructions", realmName, requiredActionsText)}
    </p>

    <div class="btn-wrapper" style="text-align:center; margin:32px 0;">
        <a href="${link}" class="btn" style="background:#1b5e3f; color:#ffffff; text-decoration:none; padding:14px 24px; border-radius:8px; display:inline-block; font-size:15px; font-weight:600; line-height:1;">
            ${msg("executeActionsButton")}
        </a>
    </div>

    <p class="small-text" style="margin:0; font-size:14px; line-height:1.6; color:#6c757d; text-align:left;">
        ${msg("executeActionsExpiration", linkExpirationFormatter(linkExpiration))}
    </p>

    <hr class="divider" style="border:none; border-top:1px solid #dee2e6; margin:32px 0;" />

    <p class="footer-text" style="margin:0; font-size:13px; line-height:1.6; color:#6c757d; text-align:left;">
        ${msg("executeActionsIgnore")}
    </p>
</@layout.emailLayout>
