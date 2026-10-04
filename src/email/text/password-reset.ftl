<#ftl output_format="plainText">
<#--
  This file has been claimed for ownership from @keycloakify/email-native version 260007.0.0.
  To relinquish ownership and restore this file to its original content, run the following command:

  $ npx keycloakify own --path "email/text/password-reset.ftl" --revert
-->

<#-- Plain-text counterpart of html/password-reset.ftl: same wording, same keys. -->
<#if user?? && user.firstName?? && user.lastName??>
${msg("passwordResetGreeting", user.firstName, user.lastName)}

</#if>
${msg("passwordResetInstructions", realmName)}

${msg("passwordResetButton")}: ${link}

${msg("passwordResetExpiration", linkExpirationFormatter(linkExpiration))}

${msg("passwordResetIgnore")}
