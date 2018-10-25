$rg="den_lab1"
$job = 'den_job.' + ((Get-Date).ToUniversalTime()).tostring("MMddyy.HHmm")
$template="C:\myTemplates\lab1\azuredeployden.json"
$parms="c:\myTemplates\lab1\azuredeploy.parametersden.json"
$storageAccount = (New-AzureRmResourceGroupDeployment -Name $job -TemplateParameterFile $parms -TemplateFile $template -ResourceGroupName $rg).Outputs.storageAccount.Value
echo "Storage account $storageAccount has been created."