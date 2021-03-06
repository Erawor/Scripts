$Title = "VMs with over x vCPUs"
$Header =  "VMs with over x vCPUs : $($OverCPU.count)"
$Comments = "The following VMs have over $vCPU CPU(s) and may impact performance due to CPU scheduling"
$Display = "Table"
$Author = "Alan Renouf"
$Version = 1.0

# Start of Settings 
# Define the maximum amount of vCPUs your VMs are allowed
$vCPU=2
# End of Settings

$OverCPU = @($VM | Where {$_.NumCPU -gt $vCPU} | Select Name, PowerState, NumCPU)
$OverCPU

