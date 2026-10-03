<#--
  This file has been claimed for ownership from @keycloakify/email-native version 260007.0.0.
  To relinquish ownership and restore this file to its original content, run the following command:
  
  $ npx keycloakify own --path "email/html/template.ftl" --revert
-->

<#macro emailLayout>
    <#assign logoUrl = "${url.resourcesUrl}/img/spcl.png" />
    <#assign logoAlt = "${realmName}" />
    <#assign logoWidth = "100" />  <#-- Réduction de 160px à 140px -->

<#-- Styles inline globaux -->
    <#assign globalStyles>
        .container { background: #f5f7fb; padding: 40px 0; }
        .card { max-width: 600px; margin: 0 auto; background: #ffffff; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 20px rgba(0,0,0,0.06); }
        .content { padding: 40px 40px 32px 40px; }
        .logo-wrapper { text-align: center; margin-bottom: 24px; }
        .logo { max-width: ${logoWidth}px; height: auto; display: inline-block; }
        .title { margin: 0 0 16px 0; font-size: 24px; line-height: 1.3; color: #111827; text-align: left; }
        .text { margin: 0 0 16px 0; font-size: 16px; line-height: 1.6; text-align: left; }
        .btn-wrapper { text-align: center; margin: 32px 0; }
        .btn { background: linear-gradient(90deg, #eb772f 0%, #eb772f 65%, #152761 100%); color: #ffffff; text-decoration: none; padding: 14px 24px; border-radius: 8px; display: inline-block; font-size: 15px; font-weight: 600; line-height: 1; }
        .small-text { margin: 0; font-size: 14px; line-height: 1.6; color: #6b7280; text-align: left; }
        .divider { border: none; border-top: 1px solid #e5e7eb; margin: 32px 0; }
        .footer-text { margin: 0; font-size: 13px; line-height: 1.6; color: #6b7280; text-align: left; }
    </#assign>

    <html>
    <body>
    <table width="100%" cellpadding="0" cellspacing="0" class="container" style="background:#f5f7fb; padding:40px 0;">
        <tr>
            <td align="center">
                <table width="600" cellpadding="0" cellspacing="0" class="card" style="max-width:600px; margin:0 auto; background:#ffffff; border-radius:12px; overflow:hidden; box-shadow:0 4px 20px rgba(0,0,0,0.06);">
                    <tr>
                        <td class="content" style="padding:40px 40px 32px 40px;">

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
