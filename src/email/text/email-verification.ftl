<#ftl output_format="plainText">
<#--
  This file has been claimed for ownership from @keycloakify/email-native version 260007.0.0.
  To relinquish ownership and restore this file to its original content, run the following command:
  
  $ npx keycloakify own --path "email/text/email-verification.ftl" --revert
-->

${msg("emailVerificationGreeting", user.firstName, user.lastName)}

${msg("emailVerificationAccountReady", realmName)}

${msg("emailVerificationInstructions")}

${msg("emailVerificationButton")}: ${link}

${msg("emailVerificationExpiration", linkExpirationFormatter(linkExpiration))}

${msg("emailVerificationIgnore")}
