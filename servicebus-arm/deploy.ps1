#
Connect-AzAccount
Get-AzSubscription
 $context = Get-AzSubscription -SubscriptionId 'redacted'
Set-AzContext $context
Set-AzDefault -ResourceGroupName rg-sb-prod-ncus-02
$templateFile = "template.json"
$TemplateParameterFile = "parameters.json"
$today=Get-Date -Format "MM-dd-yyyy-ss"
$deploymentName="QA--"+"$today"
New-AzResourceGroupDeployment -Name $deploymentName -TemplateFile $templateFile -TemplateParameterFile $TemplateParameterFile #-whatif
