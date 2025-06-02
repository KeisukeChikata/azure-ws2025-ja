# azure-ws2025-ja
Deploy Windows Server 2025 and set Japanese locale via ARM template.

# Command(cloud shell / ARMテンプレート版)
```
New-AzResourceGroup -Name <resource_group_name> -Location japaneast

New-AzResourceGroupDeployment `
  -ResourceGroupName <resource_group_name> `
  -TemplateUri "https://raw.githubusercontent.com/KeisukeChikata/azure-ws2025-ja/refs/heads/main/azuredeploy.json" `
  -adminUsername vmadmin `
  -adminPassword (ConvertTo-SecureString "Dis@1234567890" -AsPlainText -Force)
```
リソースはすぐにできるが、日本語化まで1hほどかかる。(日本語パックのダウンロードに時間がかかっている？)

# Command(Azure CLI / ARMテンプレート版)
```
az group create `
  --name <resource_group_name> `
  --location japaneast

az deployment group create `
  --resource-group <resource_group_name> `
  --template-uri "https://raw.githubusercontent.com/KeisukeChikata/azure-ws2025-ja/refs/heads/main/azuredeploy.json" `
  --parameters adminUsername=vmadmin adminPassword='Dis@1234567890'
```

# Command(Azure CLI / Bicep版)
```
az deployment group create `
  --resource-group <resource_group_name> `
  --template-uri "https://raw.githubusercontent.com/KeisukeChikata/azure-ws2025-ja/refs/heads/main/azuredeploy.json" `
  --parameters adminUsername=vmadmin adminPassword='Dis@1234567890'
```

