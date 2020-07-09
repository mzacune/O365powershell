#List all members of a dynamic distribution group
$FTE = Get-DynamicDistributionGroup "" #replace with name of Dynamic Distribution Group
Get-Recipient -RecipientPreviewFilter $FTE.RecipientFilter -OrganizationalUnit $FTE.RecipientContainer


#List all members of a dynamic distribution group and their email address
$FTE = Get-DynamicDistributionGroup "" #replace with name of Dynamic Distribution Group
Get-Recipient -ResultSize Unlimited -RecipientPreviewFilter $FTE.RecipientFilter -OrganizationalUnit $FTE.RecipientContainer | Format-Table Name,Primary*