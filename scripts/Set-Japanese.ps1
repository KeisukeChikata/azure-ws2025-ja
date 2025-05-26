# 日本語言語パックの追加
Add-WindowsCapability -Online -Name Language.Basic~~~ja-JP~0.0.1.0

# 表示言語とユーザー言語設定
Set-WinSystemLocale ja-JP
Set-WinUserLanguageList ja-JP -Force
Set-Culture ja-JP
Set-WinUILanguageOverride -Language ja-JP
Set-WinHomeLocation -GeoId 122
Set-TimeZone -Id "Tokyo Standard Time"

# 再起動で反映
Restart-Computer
