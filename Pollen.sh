#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Run this script as root (sudo su)"
    exit
fi

echo "+##############################################+"
echo "# Welcome To Pollen!                           #"
echo "# The User Policy Editor                       #"
echo "# -------------------------------------------- #"
echo "# Developers:                                  #"
echo "# - OlyB                                       #"
echo "# - Rafflesia                                  #"
echo "# - Scaratek                                   #"
echo "# - r58Playz                                   #"
echo "# - Honkychunkymonkey - Additional Changes     #"
echo "+##############################################+"
echo "May Ultrablue Rest in Peace, o7"

sleep 1

mkdir -p /tmp/overlay/etc/opt/chrome/policies/managed
echo '{
   "chromeMetadata": {
      "application": "Google Chrome",
      "platform": "15359.58.0 (Official Build) stable-channel octopus",
      "revision": "60127beb442528082b3f6eff7392267e145262c3-refs/branch-heads/5615@{#1268}",
      "version": "112.0.5615.134 (Official Build) (64-bit)"
   },
   "chromePolicies": {
      "AdsSettingForIntrusiveAdsSites": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": 2
      },
      "AllowDeletingBrowserHistory": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": false
      },
      "AllowDinosaurEasterEgg": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "AllowKioskAppControlChromeVersion": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "ArcBackupRestoreServiceEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": 0
      },
      "ArcEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": true
      },
      "ArcGoogleLocationServicesEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": 0
      },
      "ArcPolicy": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": "{\"applications\":[{\"packageName\":\"com.sphero.spheromini\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.sphero.sprk\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"cc.littlebits.android\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.ccc.bookroom\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.ccc.wordworksapp\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.esri.arcgis.collector\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.google.android.apps.jam\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.google.earth\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.littlebits.littleBits\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.mackin.via.reader\",\"installType\":\"BLOCKED\"},{\"packageName\":\"com.mojang.minecraftedu\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"com.trimble.buildings.sketchup\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"org.scratch\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"org.scratchjr.android\",\"installType\":\"AVAILABLE\"},{\"packageName\":\"tts.bluebot\",\"installType\":\"AVAILABLE\"}],\"playStoreMode\":\"WHITELIST_NOT_ENFORCED\",\"playEmmApiInstallDisabled\":true,\"dpsInteractionsDisabled\":true,\"statusReportingSettings\":{\"applicationReportsEnabled\":true,\"profileSettingsEnabled\":true,\"softwareInfoEnabled\":true}}"
      },
      "AssistantOnboardingMode": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": "Education"
      },
      "AttestationEnabledForDevice": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "AttestationEnabledForUser": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": true
      },
      "AttestationForContentProtectionEnabled": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "BookmarkBarEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": true
      },
      "CaptivePortalAuthenticationIgnoresProxy": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "CastReceiverEnabled": {
         "future": true,
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "ChromeOsLockOnIdleSuspend": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": true
      },
      "ChromeOsMultiProfileUserBehavior": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": "unrestricted"
      },
      "ChromeOsReleaseChannel": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": "stable-channel"
      },
      "ChromeOsReleaseChannelDelegated": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "CloudExtensionRequestEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": false
      },
      "CloudReportingEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": true
      },
      "CookiesAllowedForUrls": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": [ "[*.]hcpss.org", "[*.]hcpss.me", "[*.]google.com", "[*.]hcpss.instructure.com" ]
      },
      "DefaultGeolocationSetting": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": 1
      },
      "DeveloperToolsAvailability": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": 2
      },
      "DeveloperToolsDisabled": {
         "deprecated": true,
         "error": "Ignored because it was overridden by DeveloperToolsAvailability.",
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": true
      },
      "DeviceActivityHeartbeatEnabled": {
         "future": true,
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "DeviceAllowNewUsers": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "DeviceAutoUpdateDisabled": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "DeviceBlockDevmode": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "DeviceDataRoamingEnabled": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "DeviceEphemeralUsersEnabled": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "DeviceGuestModeEnabled": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "DeviceLocalAccounts": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": [ {
            "id": "beecneeaieaafhlefgacooacbjpiccld",
            "kiosk_app_id": "beecneeaieaafhlefgacooacbjpiccld",
            "type": 1
         }, {
            "id": "bhlkkkfnbnbodofiagfglfcpleidoodd",
            "kiosk_app_id": "bhlkkkfnbnbodofiagfglfcpleidoodd",
            "type": 1
         }, {
            "id": "cbmbklmcgjjgdghoempajlmalgofnhdg",
            "kiosk_app_id": "cbmbklmcgjjgdghoempajlmalgofnhdg",
            "type": 1
         }, {
            "id": "cnhmlnfclcedlobanlpiimgmbmkopdbd",
            "kiosk_app_id": "cnhmlnfclcedlobanlpiimgmbmkopdbd",
            "type": 1
         }, {
            "id": "dfbmcelmchhnfkmpccoabeplnmdljeod",
            "kiosk_app_id": "dfbmcelmchhnfkmpccoabeplnmdljeod",
            "type": 1
         }, {
            "id": "gngadipbljmmcgcjjflidckpbgebnhod",
            "kiosk_app_id": "gngadipbljmmcgcjjflidckpbgebnhod",
            "type": 1
         }, {
            "id": "lhfmngifffjhdjdgkfdhbifhndddmjko",
            "kiosk_app_id": "lhfmngifffjhdjdgkfdhbifhndddmjko",
            "type": 1
         }, {
            "id": "mdmkkicfmmkgmpkmkdikhlbggogpicma",
            "kiosk_app_id": "mdmkkicfmmkgmpkmkdikhlbggogpicma",
            "type": 1
         }, {
            "id": "nbadimlamdnhlokcpjdgeahgcllcikph",
            "kiosk_app_id": "nbadimlamdnhlokcpjdgeahgcllcikph",
            "type": 1
         }, {
            "id": "ndiknakfegejmadcnjeledgcllaobkcl",
            "kiosk_app_id": "ndiknakfegejmadcnjeledgcllaobkcl",
            "type": 1
         }, {
            "id": "nickmpjdfebcopckkfjmflblnmijbiom",
            "kiosk_app_id": "nickmpjdfebcopckkfjmflblnmijbiom",
            "type": 1
         }, {
            "id": "omabofmgicimlblcljnpeefhinjaebdb",
            "kiosk_app_id": "omabofmgicimlblcljnpeefhinjaebdb",
            "type": 1
         }, {
            "id": "omkghcboodpimaoimdkmigofhjcpmpeb",
            "kiosk_app_id": "omkghcboodpimaoimdkmigofhjcpmpeb",
            "type": 1
         }, {
            "id": "https://bluebook-chromebook.app.collegeboard.org",
            "type": 4,
            "web_kiosk_icon_url": "https://bluebook-chromebook.app.collegeboard.org/icon-mac-192x192.1dec36e3.webp",
            "web_kiosk_title": "Bluebook",
            "web_kiosk_url": "https://bluebook-chromebook.app.collegeboard.org"
         } ]
      },
      "DeviceLoginScreenDomainAutoComplete": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": "inst.hcpss.org"
      },
      "DeviceLoginScreenInputMethods": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": [ "xkb:us::eng" ]
      },
      "DeviceLoginScreenLocales": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": [  ]
      },
      "DeviceMetricsReportingEnabled": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "DeviceOffHours": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": {
            "ignored_policy_proto_tags": [  ],
            "intervals": [  ],
            "timezone": "America/New_York"
         }
      },
      "DeviceOpenNetworkConfiguration": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": "{\n   \"GlobalNetworkConfiguration\": {\n      \"DisableNetworkTypes\": [ \"VPN\" ]\n   },\n   \"NetworkConfigurations\": [ {\n      \"GUID\": \"{c364fa0a-5a3d-4ef3-bc8f-136d0a4d5375}\",\n      \"Name\": \"HCPSS-ChromeBooks\",\n      \"ProxySettings\": {\n         \"Type\": \"Direct\"\n      },\n      \"Type\": \"WiFi\",\n      \"WiFi\": {\n         \"AutoConnect\": true,\n         \"HiddenSSID\": true,\n         \"Passphrase\": \"********\",\n         \"SSID\": \"HCPSS-ChromeBooks\",\n         \"Security\": \"WPA-PSK\"\n      }\n   } ]\n}\n"
      },
      "DevicePowerAdaptiveChargingEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "DeviceShowUserNamesOnSignin": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "DeviceSystemWideTracingEnabled": {
         "level": "mandatory",
         "scope": "machine",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "DeviceTargetVersionPrefix": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": ""
      },
      "DeviceTransferSAMLCookies": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "DeviceUnaffiliatedCrostiniAllowed": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "DeviceUpdateHttpDownloadsEnabled": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "DeviceUpdateScatterFactor": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": 432000
      },
      "DeviceUserAllowlist": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": "********"
      },
      "DeviceWiFiFastTransitionEnabled": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "DisableSafeBrowsingProceedAnyway": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": true
      },
      "DnsOverHttpsMode": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": "off"
      },
      "DownloadDirectory": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": "${google_drive}/"
      },
      "EasyUnlockAllowed": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "EmojiSuggestionEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "EnableSyncConsent": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": false
      },    
      "ExtensionInstallAllowlist": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": [ "bjlelllmddmghonfckbpjafiamjhlkio", "elmgohdonjdampbcgefphnlchgocpaij", "idmlfdpopnofadegehbbknejjnejeinm", "jhnhfnolmcleankdkhfklakpchnccipg", "ncmmhcpckfejllekofcacodljhdhibkg", "aapocclcgogkmnckokdopfmhonfmgoek", "adkcpkpghahmbopkjchobieckeoaoeem", "alhngdkjgnedakdlnamimgfihgkmenbh", "aohghmighlieiainnegkcijnfilokake", "apdfllckaahabafndbhieahigkjlhalf", "cgbbbjmgdpnifijconhamggjehlamcif", "cmbfglhjnlnabpaekgpfobhbfikedhcg", "ecimfebadcfiablhgjpheinknpdkdjhh", "enfolipbjmnmleonhhebhalojdpcpdoo", "felcaaldnbdncclmgdcncolpebgiejap", "floniaahmccleoclneebhhmnjgdfijgg", "ghbmnnjooekpmoecnnnilnnbdlolhkhi", "hfhhnacclhffhdffklopdkcgdhifgngh", "hjngolefdpdnooamgdldlkjgmdcmcjnc", "icmgjiknkpcfkhgajgmpkkehdjmidlgl", "inoeonmfapjbbkmdafoankkfajkcphgd", "joodangkbfjnajiiifokapkpmhfnpleo", "kkbmdgjggcdajckdlbngdjonpchpaiea", "kklailfgofogmmdlhgmjgenehkjoioip", "lneaknkopdijkpnocmklfnjbeapigfbh", "mmfbcljfglbokpmkimbfghdkjmjhdgbg", "mmmfookngjpgdahmnbbamplmbhleljio", "oikgofeboedgfkaacpfepbfmgdalabej", "olanjgcmmnbjeogbokcbfkggbgmadpim", "pohmgobdeajemcifpoldnnhffjnnkhgf", "*",]
      },
      "ExtensionInstallBlocklist": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": []
      },
      "ExtensionInstallForcelist": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": [ "bjlelllmddmghonfckbpjafiamjhlkio;https://clients2.google.com/service/update2/crx", "elmgohdonjdampbcgefphnlchgocpaij;https://clients2.google.com/service/update2/crx", "idmlfdpopnofadegehbbknejjnejeinm;https://clients2.google.com/service/update2/crx", "jhnhfnolmcleankdkhfklakpchnccipg;https://clients2.google.com/service/update2/crx", "ncmmhcpckfejllekofcacodljhdhibkg;https://clients2.google.com/service/update2/crx", "adkcpkpghahmbopkjchobieckeoaoeem;https://lsrelay-extensions-production.s3.amazonaws.com/chrome-filter/06318242f0389dc531690213d0264c48e82a9faff1b6f46a71311a7795e3c4a8/ChromeFilter.xml", "alhngdkjgnedakdlnamimgfihgkmenbh;https://clients2.google.com/service/update2/crx", "cgbbbjmgdpnifijconhamggjehlamcif;https://clients2.google.com/service/update2/crx", "cmbfglhjnlnabpaekgpfobhbfikedhcg;https://secminio.hcpss.org/public/status.xml", "ecimfebadcfiablhgjpheinknpdkdjhh;https://clients2.google.com/service/update2/crx", "enfolipbjmnmleonhhebhalojdpcpdoo;https://clients2.google.com/service/update2/crx", "feepmdlmhplaojabeoecaobfmibooaid;https://clients2.google.com/service/update2/crx", "floniaahmccleoclneebhhmnjgdfijgg;https://clients2.google.com/service/update2/crx", "ghbmnnjooekpmoecnnnilnnbdlolhkhi;https://clients2.google.com/service/update2/crx", "hjngolefdpdnooamgdldlkjgmdcmcjnc;https://clients2.google.com/service/update2/crx", "icmgjiknkpcfkhgajgmpkkehdjmidlgl;https://lightspeed-apps.s3.amazonaws.com/chrome-monitor/auto-update.xml", "inoeonmfapjbbkmdafoankkfajkcphgd;https://clients2.google.com/service/update2/crx", "kkbmdgjggcdajckdlbngdjonpchpaiea;https://lsrelay-extensions-production.s3.amazonaws.com/classroom/06318242f0389dc531690213d0264c48e82a9faff1b6f46a71311a7795e3c4a8/Classroom.xml", "mmfbcljfglbokpmkimbfghdkjmjhdgbg;https://clients2.google.com/service/update2/crx", "oikgofeboedgfkaacpfepbfmgdalabej;https://clients2.google.com/service/update2/crx", "olanjgcmmnbjeogbokcbfkggbgmadpim;https://clients2.google.com/service/update2/crx", "pohmgobdeajemcifpoldnnhffjnnkhgf;https://clients2.google.com/service/update2/crx" ]
      },
      "ExtensionSettings": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": {
            "*": {
               "blocked_permissions": []
            },
            "cgbbbjmgdpnifijconhamggjehlamcif": {
               "runtime_allowed_hosts": [ "https://gopher-buddy-prod.appspot.com" ]
            },
            "inoeonmfapjbbkmdafoankkfajkcphgd": {
               "toolbar_pin": "force_pinned"
            },
            "kkbmdgjggcdajckdlbngdjonpchpaiea": {
               "toolbar_pin": "force_pinned"
            }
         }
      },
      "FastPairEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "ForceGoogleSafeSearch": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": true
      },
      "ForceYouTubeRestrict": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": 0
      },
      "HeartbeatEnabled": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "HomepageIsNewTabPage": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": false
      },
      "HomepageLocation": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": "https://hcpss.me"
      },
      "IncognitoModeAvailability": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": 1
      },
      "InstantTetheringAllowed": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": false
      },
      "IsolatedAppsDeveloperModeAllowed": {
         "future": true,
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "KioskCRXManifestUpdateURLIgnored": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "LacrosAvailability": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": "lacros_disallowed"
      },
      "LacrosSecondaryProfilesAllowed": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "LacrosSelection": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": "rootfs"
      },
      "LidCloseAction": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": 0
      },
      "LogUploadEnabled": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "LoginAuthenticationBehavior": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": 1
      },
      "LoginDisplayPasswordButtonEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "LoginVideoCaptureAllowedUrls": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": [  ]
      },
      "NTLMShareAuthenticationEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "NTPCustomBackgroundEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": true
      },
      "NearbyShareAllowed": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "NetBiosShareDiscoveryEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "NetworkThrottlingEnabled": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": {
            "download_rate_kbits": 0,
            "enabled": false,
            "upload_rate_kbits": 0
         }
      },
      "OnSecurityEventEnterpriseConnector": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": [ {
            "enabled_opt_in_events": [  ],
            "service_provider": "google"
         } ]
      },
      "OpenNetworkConfiguration": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": "{\n   \"NetworkConfigurations\": [ {\n      \"GUID\": \"{4dc6e3b4-54aa-401d-bc86-44c6b4b3eb4d}\",\n      \"Name\": \"HCPSS-Wireless\",\n      \"ProxySettings\": {\n         \"Type\": \"Direct\"\n      },\n      \"Type\": \"WiFi\",\n      \"WiFi\": {\n         \"AutoConnect\": true,\n         \"EAP\": {\n            \"Identity\": \"${LOGIN_ID}\",\n            \"Inner\": \"MSCHAPv2\",\n            \"Outer\": \"PEAP\",\n            \"Password\": \"${PASSWORD}\",\n            \"Recommended\": [ \"AnonymousIdentity\" ],\n            \"SaveCredentials\": true,\n            \"UseSystemCAs\": false\n         },\n         \"HiddenSSID\": false,\n         \"SSID\": \"HCPSS-Wireless\",\n         \"Security\": \"WPA-EAP\"\n      }\n   } ]\n}\n"
      },
      "OsColorMode": {
         "level": "recommended",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": "light"
      },
      "PasswordProtectionChangePasswordURL": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": ""
      },
      "PasswordProtectionWarningTrigger": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": 2
      },
      "PhoneHubAllowed": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "PinUnlockAutosubmitEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "PinnedLauncherApps": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": [ "canvas", "projector", "inoeonmfapjbbkmdafoankkfajkcphgd", "kkbmdgjggcdajckdlbngdjonpchpaiea" ]
      },
      "PluginVmAllowed": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "PopupsAllowedForUrls": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": [ "https://test.mapnwea.org/" ]
      },
      "PowerManagementIdleSettings": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": {
            "AC": {
               "Delays": {
                  "Idle": 3600000,
                  "ScreenDim": 0,
                  "ScreenOff": 0
               },
               "IdleAction": "Suspend"
            },
            "Battery": {
               "Delays": {
                  "Idle": 3600000,
                  "ScreenDim": 0,
                  "ScreenOff": 0
               },
               "IdleAction": "Suspend"
            }
         }
      },
      "PresentationScreenDimDelayScale": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": 100
      },
      "PrintingAllowedColorModes": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": "any"
      },
      "ProxyMode": {
         "deprecated": true,
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": "direct"
      },
      "QuickUnlockModeAllowlist": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": [  ]
      },
      "RebootAfterUpdate": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": false
      },
      "RecoveryFactorBehavior": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "ReportArcStatusEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": true
      },
      "ReportCRDSessions": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceActivityTimes": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceAudioStatus": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceAudioStatusCheckingRateMs": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": 900000
      },
      "ReportDeviceBacklightInfo": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceBluetoothInfo": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceBoardStatus": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceBootMode": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceCpuInfo": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceCrashReportInfo": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceFanInfo": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceGraphicsStatus": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceLoginLogout": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceMemoryInfo": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceNetworkConfiguration": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceNetworkStatus": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceNetworkTelemetryCollectionRateMs": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": 900000
      },
      "ReportDeviceOsUpdateStatus": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDevicePeripherals": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDevicePowerStatus": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDevicePrintJobs": {
         "future": true,
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceSecurityStatus": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceSessionStatus": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceStorageStatus": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceSystemInfo": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceTimezoneInfo": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceUsers": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceVersionInfo": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportDeviceVpdInfo": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": true
      },
      "ReportUploadFrequency": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": 10800000
      },
      "RestoreOnStartup": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": 4
      },
      "RestoreOnStartupURLs": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": [ "https://hcpss.me" ]
      },
      "SAMLOfflineSigninTimeLimit": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": 1209600
      },
      "SafeBrowsingProtectionLevel": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": 1
      },
      "SafeSitesFilterBehavior": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": 1
      },
      "ShowCastSessionsStartedByOtherDevices": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "ShowFullUrlsInAddressBar": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "ShowHomeButton": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": true
      },
      "ShowLogoutButtonInTray": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": true
      },
      "ShowTouchpadScrollScreenEnabled": {
         "future": true,
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "SmartLockSigninAllowed": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "SmsMessagesAllowed": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": false
      },
      "SuggestedContentEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "SystemTerminalSshAllowed": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "SystemTimezone": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": "America/New_York"
      },
      "TPMFirmwareUpdateSettings": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": {
         }
      },
      "TaskManagerEndProcessEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": false
      },
      "URLBlocklist": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": [ "javascript://*" ]
      },
      "UsbDetachableAllowlist": {
         "level": "mandatory",
         "scope": "machine",
         "source": "cloud",
         "value": [  ]
      },
      "UserActivityScreenDimDelayScale": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": 100
      },
      "UserBorealisAllowed": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      },
      "VoiceInteractionHotwordEnabled": {
         "level": "mandatory",
         "scope": "user",
         "source": "cloud",
         "value": false
      },
      "WifiSyncAndroidAllowed": {
         "level": "mandatory",
         "scope": "user",
         "source": "sourceEnterpriseDefault",
         "value": false
      }
   },
   "deviceLocalAccountPolicies": {
      "626565636e6565616965616166686c65666761636f6f6163626a706963636c64@kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         }
      },
      "62686c6b6b6b666e626e626f646f6669616766676c6663706c6569646f6f6464@kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         }
      },
      "63626d626b6c6d63676a6a676467686f656d70616a6c6d616c676f666e686467@kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         }
      },
      "636e686d6c6e66636c6365646c6f62616e6c7069696d676d626d6b6f70646264@kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         }
      },
      "6466626d63656c6d6368686e666b6d7063636f616265706c6e6d646c6a656f64@kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         }
      },
      "676e6761646970626c6a6d6d6367636a6a666c6964636b70626765626e686f64@kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         }
      },
      "68747470733a2f2f626c7565626f6f6b2d6368726f6d65626f6f6b2e6170702e636f6c6c656765626f6172642e6f7267@web-kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "DeviceAttributesAllowedForOrigins": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": [ "https://bluebook-chromebook.app.collegeboard.org" ]
         },
         "ExtensionInstallForcelist": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": [ "joaneffahikmmipmidpkeedopejmhbbm;https://bluebook.app.collegeboard.org/downloads/chromebook-extension/update.xml" ]
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "VirtualKeyboardFeatures": {
            "error": "Policy parsing error: Line: 1, column: 1, Unexpected token.\nExpected dictionary value.",
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": ""
         }
      },
      "6c68666d6e67696666666a68646a64676b666468626966686e6464646d6a6b6f@kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         }
      },
      "6d646d6b6b6963666d6d6b676d706b6d6b64696b686c6267676f677069636d61@kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         }
      },
      "6e626164696d6c616d646e686c6f6b63706a646765616867636c6c63696b7068@kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         }
      },
      "6e64696b6e616b666567656a6d6164636e6a656c656467636c6c616f626b636c@kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PowerManagementIdleSettings": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": {
               "AC": {
                  "Delays": {
                     "Idle": 10000,
                     "IdleWarning": 0,
                     "ScreenDim": 0,
                     "ScreenOff": 10000
                  },
                  "IdleAction": "DoNothing"
               },
               "Battery": {
                  "Delays": {
                     "Idle": 10000,
                     "IdleWarning": 0,
                     "ScreenDim": 0,
                     "ScreenOff": 10000
                  },
                  "IdleAction": "DoNothing"
               }
            }
         },
         "PowerManagementUsesAudioActivity": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PowerManagementUsesVideoActivity": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PresentationScreenDimDelayScale": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": 100
         },
         "ScreenLockDelays": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": {
               "AC": 0,
               "Battery": 0
            }
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserActivityScreenDimDelayScale": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": 100
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         }
      },
      "6e69636b6d706a64666562636f70636b6b666a6d666c626c6e6d696a62696f6d@kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         }
      },
      "6f6d61626f666d676963696d6c626c636c6a6e7065656668696e6a6165626462@kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         }
      },
      "6f6d6b676863626f6f6470696d616f696d646b6d69676f66686a63706d706562@kiosk-apps.device-local.localhost": {
         "AttestationEnabledForUser": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "AutoFillEnabled": {
            "deprecated": true,
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillAddressEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutofillCreditCardEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "AutoplayAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         },
         "FloatingAccessibilityMenuEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "PasswordManagerEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "TranslateEnabled": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         },
         "UserFeedbackAllowed": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": false
         }
      }
   },
   "extensionPolicies": {
      "alhngdkjgnedakdlnamimgfihgkmenbh": {
         "PrintDeployServerHosts": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": [ "coaprintsrv.hcpss.org" ]
         }
      },
      "bjlelllmddmghonfckbpjafiamjhlkio": {
         "youtube-only": {
            "level": "mandatory",
            "scope": "user",
            "source": "cloud",
            "value": true
         }
      },
      "feepmdlmhplaojabeoecaobfmibooaid": {
      },
      "ghbmnnjooekpmoecnnnilnnbdlolhkhi": {
      },
      "hjngolefdpdnooamgdldlkjgmdcmcjnc": {
      },
      "inoeonmfapjbbkmdafoankkfajkcphgd": {
      }
   },
   "loginScreenExtensionPolicies": {
   },
   "status": {
      "device": {
         "assetId": "",
         "clientId": "9779649a-06c6-40f1-ac20-accad3ea5aaf",
         "directoryApiId": "b537ce2e-e250-4efb-905e-b8963a5fa7b7",
         "enterpriseDomainManager": "hcpss.org",
         "error": false,
         "gaiaId": "105250506097979753968",
         "isOffHoursActive": false,
         "location": "",
         "policiesPushAvailable": true,
         "policyDescriptionKey": "statusDevice",
         "status": "Policy cache OK",
         "timeSinceLastFetchAttempt": "2 hours ago",
         "timeSinceLastRefresh": "2 hours ago",
         "username": "ericha8967@inst.hcpss.org"
      },
      "user": {
         "clientId": "30e8ca2d-efbf-4327-83b9-89272a07a989",
         "domain": "inst.hcpss.org",
         "enterpriseDomainManager": "hcpss.org",
         "error": false,
         "flexOrgWarning": false,
         "gaiaId": "105923943132521698179",
         "isAffiliated": true,
         "policiesPushAvailable": true,
         "policyDescriptionKey": "statusUser",
         "profileId": "AreJJhXK3TXSgygtS4wxkNVU-rU",
         "status": "Policy cache OK",
         "timeSinceLastFetchAttempt": "2 hours ago",
         "timeSinceLastRefresh": "2 hours ago",
         "username": "ericha8967@inst.hcpss.org"
      }
   }
}' > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json
cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
mount --bind /tmp/overlay/etc /etc

echo ""
echo "Pollen has been successfully applied!"
