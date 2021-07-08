##create CSV with list of users (samaccountname) and header of (samaccountname) to import. 
## This foreach loop will add the users on your csv to the group specified in the targetgroup variable. 


$users = Import-Csv "C:\Path\to\csv.csv"

$targetgroup = "Name of Group here"


Foreach ($user in $users)
{
    Add-ADGroupMember -Identity $targetgroup -Members $user.samaccountname -Confirm:$false

}

