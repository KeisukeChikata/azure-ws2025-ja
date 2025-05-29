# azure-ws2025-ja
Deploy Windows Server 2025 and set Japanese locale via ARM template.

# Command(cloud shell / ARMテンプレート版)
```
New-AzResourceGroup -Name win2025-rg -Location japaneast

New-AzResourceGroupDeployment `
  -ResourceGroupName win2025-rg `
  -TemplateUri "https://raw.githubusercontent.com/KeisukeChikata/azure-ws2025-ja/refs/heads/main/azuredeploy.json" `
  -adminUsername vmadmin `
  -adminPassword (ConvertTo-SecureString "Dis@1234567890" -AsPlainText -Force)
```
リソースはすぐにできるが、日本語化まで1hほどかかる。(日本語パックのダウンロードに時間がかかっている？)

# Command(Azure CLI / ARMテンプレート版)
```
az group create `
  --name win2025-rg `
  --location japaneast

az deployment group create `
  --resource-group win2025-rg `
  --template-uri "https://raw.githubusercontent.com/KeisukeChikata/azure-ws2025-ja/refs/heads/main/azuredeploy.json" `
  --parameters adminUsername=vmadmin adminPassword='Dis@1234567890'
```

# Command(Azure CLI / Bicep版)
```
az group create `
  --name win2025-rg `
  --location japaneast

az deployment group create \
  --resource-group <your-resource-group-name> \
  --template-file ./main.bicep \
  --parameters adminUsername=vmadmin adminPassword='Dis@1234567890'
```

