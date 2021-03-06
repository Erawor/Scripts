$Title = "Removed VMs"
$Header =  "VMs Removed (Last $VMsNewRemovedAge Day(s)) : $($OutputRemovedVMs.count)"
$Comments = "The following VMs have been removed/deleted over the last $($VMsNewRemovedAge) days"
$Display = "Table"
$Author = "Alan Renouf"
$Version = 1.0

# Start of Settings 
# Set the number of days to show VMs removed for
$VMsNewRemovedAge =14
# End of Settings

$OutputRemovedVMs = @($VIEvent | where {$_.Gettype().Name -eq "VmRemovedEvent"}| Select CreatedTime, UserName, fullFormattedMessage)
$OutputRemovedVMs
