rg=den_lab1
job=den_job.$(date --utc +"%Y%m%d.%H%M")
template=/mnt/c/myTemplates/lab1/azuredeployden.json
parms=/mnt/c/myTemplates/lab1/azuredeployden.parameters.json
query='properties.outputs.storageAccount.value'
storageAccount=$(az group deployment create --parameters "@$parms" --template-file $template --query "$query" --output tsv --name $job --resource-group $rg)
echo "Storage account $storageAccount has been created."