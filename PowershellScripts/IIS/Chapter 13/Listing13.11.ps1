## PowerShell in Practice
## by Richard Siddaway
## Listing 13.11
## Control an application pool
###################################
Get-ChildItem iis:\AppPools 

Stop-WebAppPool -Name netpool   
Get-ChildItem iis:\AppPools

Start-WebItem -PSPath iis:\AppPools\netpool  
Get-ChildItem iis:\AppPools

Restart-WebAppPool -Name wmipool    
Get-ChildItem iis:\AppPools | Restart-WebAppPool