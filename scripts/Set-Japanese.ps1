# 日本語の言語パックをインストール（UIも含める）
Add-WindowsCapability -Online -Name "Language.Basic~~~ja-JP~0.0.1.0"
Add-WindowsCapability -Online -Name "Language.Handwriting~~~ja-JP~0.0.1.0"
Add-WindowsCapability -Online -Name "Language.Speech~~~ja-JP~0.0.1.0"
Add-WindowsCapability -Online -Name "Language.TextToSpeech~~~ja-JP~0.0.1.0"

# 優先する言語設定を日本語最優先を変更
Set-WinUserLanguageList -LanguageList ja-JP,en-US -Force

# システムUI表示言語を日本語に変更
Set-SystemPreferredUILanguage ja-JP

# 地域を日本に変更
Set-WinHomeLocation -GeoId 122

# タイムゾーンを日本時間に変更
Set-TimeZone -Id "Tokyo Standard Time"

# システムロケール設定を日本に変更
Set-WinSystemLocale ja-JP

# ようこそ画面と新しいユーザーアカウント設定をコピー
Copy-UserInternationalSettingsToSystem -WelcomeScreen $True -NewUser $True

# Windows OSを再起動
Restart-Computer
