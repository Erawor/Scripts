## PowerShell in Practice
## by Richard Siddaway
## Listing 13.14
## Creating a website on
## multiple machines
###################################
$source = "c:\Scripts\IIS\NewSite"  
Import-Csv servers.csv | foreach { 
	$dest = '\\' + $_.Server + '\C$\Inetpub'
	
	Write-Host "Copying Files to $dest"
	Copy-Item -Path $source -Destination $dest -Recurse -Force -Verbose 

	$web = New-PSSession -ComputerName $_.Server  
    
    Invoke-Command -Session $web  -ScriptBlock {Add-PSSnapin WebAdministration}  
    
    Invoke-Command -Session $web -ScriptBlock {New-WebAppPool -Name NewSite} 

    Invoke-Command -Session $web -ScriptBlock {New-WebSite -Name NewSite -Port 80 -PhysicalPath "c:\inetpub\NewSite" -ApplicationPool NewSite} 
    
    Invoke-Command -Session $web -ScriptBlock {Set-WebBinding -Name NewSite -BindingInformation "*:80:" -PropertyName HostHeader -Value NewSite.manticore.org} 
   
    Invoke-Command -Session $web 
    -ScriptBlock {Get-WebBinding -Name NewSite}  
    
    Invoke-Command -Session $web -ScriptBlock {Start-Sleep -Seconds 5}
    
    Invoke-Command -Session $web -ScriptBlock {Start-Website -Name NewSite} 

    Remove-PSSession -Session $web 
}