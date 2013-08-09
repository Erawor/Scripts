## PowerShell in Practice
## by Richard Siddaway
## Listing 13.15
## Creating a web application
###################################
New-WebAppPool -Name provpool 
md c:\Processes   

New-WebApplication -Site testprov -Name Processes -PhysicalPath c:\processes -ApplicationPool provpool  

Get-WebApplication  