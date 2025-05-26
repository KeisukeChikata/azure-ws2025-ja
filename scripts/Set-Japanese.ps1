Install-Language ja-JP

Set-WinUserLanguageList -LanguageList ja-JP,en-US -Force
Set-SystemPreferredUILanguage ja-JP
Set-WinHomeLocation -GeoId 122
Set-TimeZone -id “Tokyo Standard Time"
Set-WinSystemLocale ja-JP
Copy-UserInternationalSettingsToSystem -WelcomeScreen $True -NewUser $True

Restart-Computer
