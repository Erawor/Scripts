﻿# Alters an existing VMs to change the current memory to 4Gb #


$csvfile = Read-Host "Enter the CSV file location:"

$vm_names = Import-CSV $csvfile


foreach ($vm in $vm_names) {Get-VM -Name $vm.namevm | set-vm -memoryMB 4096 -Confirm:$false}