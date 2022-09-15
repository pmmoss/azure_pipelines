#
Connect-AzAccount
Get-AzSubscription
 $context = Get-AzSubscription -SubscriptionId 'd002407a-704a-4a42-bcf8-ee7cb5e23d00'
# $context = Get-AzSubscription -SubscriptionId '6a2b76bf-938a-4481-b064-5635f271fad2'
Set-AzContext $context
Set-AzDefault -ResourceGroupName rg-sb-prod-ncus-02
$templateFile = "template.json"
$TemplateParameterFile = "parameters.json"
$today=Get-Date -Format "MM-dd-yyyy-ss"
$deploymentName="QA--"+"$today"
New-AzResourceGroupDeployment -Name $deploymentName -TemplateFile $templateFile -TemplateParameterFile $TemplateParameterFile #-whatif
