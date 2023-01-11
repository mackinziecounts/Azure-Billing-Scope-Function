# Azure-Billing-Scope-Function
Get your Azure Billing Scope quickly and easily

This function is useful for anyone who wants to programmatically deploy new Azure Subscriptions using pre-defined Microsoft Customer billing information. You can enter something like "$myCustomersBillingScope = Get-BillingScope" into a script, and the variable will output the completed Azure Billing scope needed to deploy new Subscriptions using Powershell, and ARM/Bicep files. 

In order to save this function, as a module, and make it available to everyone on the same computer, save this function as a .psm1 file under \WindowsPowerShell\Modules\ inside of a folder with the same name as the .psm1. If you want the module to only be available for a select user, save the .psm1 under the user \Documents\WindowsPowerShell\Modules\ folder instead. 

After saving, re-open PowerShell and type "Get-Module -ListAvailable", or "Get-Module -ListAvailable | Where-Object -Property Name -EQ BillingScope" (to find the module without having to scroll). 

"Import-Module -Name BillingScope"
"Get-Module -Name BillingScope" 

And now you should see the module listed as ready to use. "Connect-AzAccount" and then use the module by entering "Get-BillingScope" in order to test out the command.
