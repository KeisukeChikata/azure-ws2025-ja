# azure-ws2025-ja
Deploy Windows Server 2025 and set Japanese locale via ARM template.

# Command
```
New-AzResourceGroupDeployment `
  -ResourceGroupName win2025-rg `
  -TemplateUri "https://raw.githubusercontent.com/KeisukeChikata/azure-ws2025-ja/refs/heads/main/azuredeploy.json" `
  -adminUsername vmadmin `
  -adminPassword (ConvertTo-SecureString "Dis@1234567890" -AsPlainText -Force)
```
