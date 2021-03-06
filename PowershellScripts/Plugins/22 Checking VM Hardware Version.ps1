$Title = "Checking VM Hardware Version"
$Header =  "VMs with old hardware"
$Comments = "The following VMs are not at the latest hardware version, you may gain performance enhancements if you convert them to the latest version"
$Display = "Table"
$Author = "Alan Renouf"
$Version = 1.0

# Start of Settings 
# Hardware Version to check for at least
$HWVersion =7
# End of Settings

@($VM | Select Name, HWVersion | Where {$_.HWVersion -lt $HWVersion})
				
