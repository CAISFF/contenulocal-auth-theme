<#ftl output_format="plainText">
<#--
  This file has been claimed for ownership from @keycloakify/email-native version 260007.0.0.
  To relinquish ownership and restore this file to its original content, run the following command:

  $ npx keycloakify own --path "email/text/executeActions.ftl" --revert
-->

<#-- Plain-text counterpart of html/executeActions.ftl: same wording, same keys. -->
<#assign requiredActionsText><#if requiredActions??><#list requiredActions><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#sep></#items></#list></#if></#assign>
<#if user?? && user.firstName?? && user.lastName??>
${msg("executeActionsGreeting", user.firstName, user.lastName)}

</#if>
${msg("executeActionsInstructions", realmName, requiredActionsText)}

${msg("executeActionsButton")}: ${link}

${msg("executeActionsExpiration", linkExpirationFormatter(linkExpiration))}

${msg("executeActionsIgnore")}
