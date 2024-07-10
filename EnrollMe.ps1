$env:Path += ";C:\Program Files\WindowsPowerShell\Scripts"
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Install-Script Get-WindowsAutopilotInfo -Force
Get-WindowsAutopilotInfo.ps1 -online
Start-Process ms-settings:workplace