function Get-BillingScope {
    [CmdletBinding()]
    $azbillingacc = Get-AzBillingAccount
$billingprofilename = Get-AzBillingProfile -BillingAccountName $azbillingacc.Name
$billinginvoicename = Get-AzInvoiceSection -BillingAccountName $azbillingacc.Name `
-BillingProfileName $billingprofilename.Name
$azbillingp1 = "/providers/Microsoft.Billing/billingAccounts/"
$azprofilep1 = "/billingProfiles/"
$azinvoicep1 = "/invoiceSections/"
$azcompletebillingscope = $azbillingp1+$azbillingacc.Name+$azprofilep1+$billingprofilename.Name+$azinvoicep1+$billinginvoicename.Name
$azcompletebillingscope
}