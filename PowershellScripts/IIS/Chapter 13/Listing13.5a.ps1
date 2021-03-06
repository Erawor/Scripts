## PowerShell in Practice
## by Richard Siddaway
## Listing 13.5a
## Create a site with
##  the IIS cmdlet and change
## the binding
###################################
New-WebSite -Name testcdlt -Port 80 -PhysicalPath "c:\inetpub\testcdlt" 
Set-WebBinding -Name testcdlt -BindingInformation "*:80:" -PropertyName HostHeader -Value testcdlt.manticore.org

Get-WebBinding -Name testcdlt

Start-Sleep -Seconds 5
Start-Website -Name testcdlt