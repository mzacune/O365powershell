#List all members of a Distribution Group
Get-DistributionGroupMember -Identity "" -ResultSize Unlimited
#Put name of distribution group in between quotes


#Get all members of a Distribution Group including Email Addresses
$DGName = ""
Get-DistributionGroupMember -Identity $DGName -ResultSize Unlimited | Select Name, PrimarySMTPAddress, RecipientType


#Export Distribution Group Members to a CSV File
$DGName = ""
Get-DistributionGroupMember -Identity $DGName -ResultSize Unlimited | Select Name, PrimarySMTPAddress, RecipientType | Export-CSV "C:\distro.csv" -NoTypeInformation -Encoding UTF8