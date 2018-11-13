#Define variables
$rgName = "mspBatchResourceGroup3"
$storageAccountName = "batchstg$(Get-Random)"
$accountName = "ansbatchacct$(Get-Random)"
$location = "West Europe"
$batchPoolID = "mypool"

#Register the Batch Resource Provider
Register-AzureRMResourceProvider -ProviderNamespace Microsoft.Batch

#create New Resource Group
New-AzureRmResourceGroup –Name $rgName –location $location

#Create Storage Account to link to Batch account
$storage = New-AzureRmStorageAccount -ResourceGroupName $rgName -Name $storageAccountName -SkuName Standard_LRS -Location $location

#Create new Batch Account
New-AzureRmBatchAccount –AccountName $accountName –Location $location –ResourceGroupName $rgName -AutoStorageAccountId $storage.Id
Start-Sleep -Seconds 10

#Create new Batch Pool
$context = Get-AzureRmBatchAccount -AccountName $accountName
$imageRef = New-Object -TypeName "Microsoft.Azure.Commands.Batch.Models.PSImageReference" -ArgumentList @("UbuntuServer","Canonical","16.04.0-LTS")
$configuration = New-Object -TypeName "Microsoft.Azure.Commands.Batch.Models.PSVirtualMachineConfiguration" -ArgumentList @($imageRef, "batch.node.ubuntu 16.04")
New-AzureBatchPool -Id $batchPoolID -VirtualMachineSize "Standard_a1" -VirtualMachineConfiguration $configuration -AutoScaleFormula '$TargetDedicated=2;' -BatchContext $context
