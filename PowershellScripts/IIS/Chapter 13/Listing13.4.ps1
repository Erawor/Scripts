## PowerShell in Practice
## by Richard Siddaway
## Listing 13.4
## Create a site with WMI and .NET
###################################
$conopt = New-Object System.Management.ConnectionOptions 
$conopt.Authentication = [System.Management.AuthenticationLevel]::PacketPrivacy 

$scope = New-Object System.Management.ManagementScope 
$scope.Path = "\\.\root\WebAdministration" 
$scope.Options = $conopt 

$path = New-Object System.Management.ManagementPath
$path.ClassName = "Site"  

$site = New-Object System.Management.ManagementClass($scope, $path, $null) 

$path2 = New-Object System.Management.ManagementPath 
$path2.ClassName = "BindingElement"  

$bind = New-Object System.Management.ManagementClass($scope, $path2, $null) 
$BInstance = $bind.psbase.CreateInstance()    

$Binstance.BindingInformation = "*:80:testnw.manticore.org" 
$BInstance.Protocol = "http" 

$site.Create('testnw', $Binstance, 'C:\Inetpub\testnw', $true) 