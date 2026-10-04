<#--
  This file has been claimed for ownership from @keycloakify/email-native version 260007.0.0.
  To relinquish ownership and restore this file to its original content, run the following command:

  $ npx keycloakify own --path "email/html/template.ftl" --revert
-->

<#--
  Shared chrome for every mail Keycloak sends. Sixteen of the seventeen templates come from
  @keycloakify/email-native and only emit plain <h1>/<p>/<a> inside <#nested>, so the base element
  rules below are what makes them look like the platform rather than raw unstyled HTML.

  Colours mirror contenulocal/src/main/webapp/content/scss/_design-tokens.scss (accent #1B5E3F).
  Every rule is declared twice on purpose: in <head> for the clients that honour a <style> block, and
  inline on the structural elements for those that strip it.

  DM Sans is named first but never fetched: a mail must not call an external font service, and most
  clients would block it anyway. Readers without it fall back to their system sans-serif.
-->

<#macro emailLayout>
    <#assign logoUrl = "${url.resourcesUrl}/img/spcl.png" />
    <#assign logoAlt = "${realmName}" />
    <#assign logoWidth = "100" />

    <#assign fontStack = "'DM Sans', 'Segoe UI', Roboto, 'Helvetica Neue', Helvetica, Arial, sans-serif" />

    <html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <style>
            body { margin: 0; padding: 0; background: #f8f9fa; }
            .container { background: #f8f9fa; padding: 40px 0; }
            .card { max-width: 600px; margin: 0 auto; background: #ffffff; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 12px -2px rgba(0, 0, 0, 0.08); }
            .content { padding: 40px 40px 32px 40px; font-family: ${fontStack}; color: #212529; }
            .logo-wrapper { text-align: center; margin-bottom: 24px; }
            .logo { max-width: ${logoWidth}px; height: auto; display: inline-block; }

            <#-- The extension-provided templates emit bare h1/p/a: these rules carry them. -->
            .content h1, .content .title { margin: 0 0 16px 0; font-size: 24px; line-height: 1.3; font-weight: 600; color: #212529; text-align: left; }
            .content p, .content .text { margin: 0 0 16px 0; font-size: 16px; line-height: 1.6; color: #212529; text-align: left; }
            .content a { color: #1b5e3f; }

            .btn-wrapper { text-align: center; margin: 32px 0; }
            .btn { background: #1b5e3f; color: #ffffff; text-decoration: none; padding: 14px 24px; border-radius: 8px; display: inline-block; font-size: 15px; font-weight: 600; line-height: 1; }
            .small-text { margin: 0; font-size: 14px; line-height: 1.6; color: #6c757d; text-align: left; }
            .divider { border: none; border-top: 1px solid #dee2e6; margin: 32px 0; }
            .footer-text { margin: 0; font-size: 13px; line-height: 1.6; color: #6c757d; text-align: left; }
        </style>
    </head>
    <body style="margin:0; padding:0; background:#f8f9fa;">
    <table width="100%" cellpadding="0" cellspacing="0" class="container" style="background:#f8f9fa; padding:40px 0;">
        <tr>
            <td align="center">
                <table width="600" cellpadding="0" cellspacing="0" class="card" style="max-width:600px; margin:0 auto; background:#ffffff; border-radius:12px; overflow:hidden; box-shadow:0 4px 12px -2px rgba(0,0,0,0.08);">
                    <tr>
                        <td class="content" style="padding:40px 40px 32px 40px; font-family:${fontStack}; color:#212529; font-size:16px; line-height:1.6;">

                            <div class="logo-wrapper" style="text-align:center; margin-bottom:24px;">
                                <img src="${logoUrl}" alt="${logoAlt}" class="logo" style="max-width:${logoWidth}px; height:auto; display:inline-block;" />
                            </div>

                            <#nested>

                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </body>
    </html>
</#macro>
