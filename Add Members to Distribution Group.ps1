#Add members to Distribution List from a CSV file
Import-CSV C:\distro.csv | ForEach {Add-DistributionGroupMember -Identity "College Park All Call" -Member $_.PrimarySmtpAddress}
#PrimarySmtpAddress is the name of the column that contains the user email addresses

#Add Individual Member to Distribution Group
Add-DistributionGroupMember -Identity "College Park All Call" -Member barry.george@bobbydodd.org