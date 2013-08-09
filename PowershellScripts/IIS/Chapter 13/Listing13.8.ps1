## PowerShell in Practice
## by Richard Siddaway
## Listing 13.8
## Viewing website status
###################################
Get-WebSite  

ls iis:\sites 

#Requires -version 2.0
Get-WmiObject -ComputerName 'Web01' -Namespace "root\webadministration" -Class Site -Authentication 6