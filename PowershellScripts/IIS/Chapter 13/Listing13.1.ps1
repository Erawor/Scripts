## PowerShell in Practice
## by Richard Siddaway
## Listing 13.1
## Create test folders
#################################
New-Item -ItemType Directory -Path c:\inetpub -Name testnet 
New-Item -ItemType Directory -Path c:\inetpub -Name testwmi 
New-Item -ItemType Directory -Path c:\inetpub -Name testnw 
New-Item -ItemType Directory -Path c:\inetpub -Name testcdlt 
New-Item -ItemType Directory -Path c:\inetpub -Name testprov

## elegant version
## "testnet", "testwmi", "testnw", "testcdlt", "testprov" | foreach {New-Item -ItemType Directory -Path c:\test -Name $_}