## PowerShell in Practice
## by Richard Siddaway
## Listing 13.21
## Read a configuration file
###################################
Get-Content -Path (Get-WebConfigFile) 

notepad (Get-WebConfigFile "iis:\sites\testnet") 