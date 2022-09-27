#
Connect-AzAccount
Get-AzSubscription
 $context = Get-AzSubscription -SubscriptionId 'REDACTED'
Set-AzContext $context
Set-AzDefault -ResourceGroupName rg-apim-qa-ncus-01
$templateFile = "azuredeploy.json"
$TemplateParameterFile = "azuredeploy.parameters.json"
$today=Get-Date -Format "MM-dd-yyyy-ss"
$deploymentName="QA--"+"$today"
New-AzResourceGroupDeployment -Name $deploymentName -TemplateFile $templateFile -TemplateParameterFile $TemplateParameterFile -whatif

