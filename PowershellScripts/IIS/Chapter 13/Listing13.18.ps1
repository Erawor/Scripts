## PowerShell in Practice
## by Richard Siddaway
## Listing 13.18
## Persisting PowerShell objects
###################################
Get-Process | Export-Clixml -Path proc.xml 

$p = Import-Clixml -Path proc.xml  
$p

$p | where {$_.Handles -gt 500}