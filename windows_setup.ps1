# Powershell script to setup windows
## To run - start powershell with administrator priviledges


# Script setup
Read-Host "Press enter to continue if you really want to execute the script"
$chocolatey_install_status = Read-Host "Are you running the script before restarting prompt(y/n): "


# Install chocolatey if it hasn't been installed yet
if ("y" -eq $chocolatey_install_status)
{
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

	Read-Host "You should start the powershell again as an administrator, when you are ready press Enter to quit"
	exit
}


# Install Applications using chocolatey
choco upgrade -y chocolatey
choco install -y 7zip blender vscode git
choco install -y microsoft-windows-terminal


# Create the needed folders in users directory
new-item $HOME\user_docs -itemtype directory
new-item $HOME\source -itemtype directory
new-item $HOME\github -itemtype directory
new-item $HOME\blender -itemtype directory


# ToDo by hand
Write-Output "To do by manually:
 - Install steam and chrome
 - Install drivers including using Geforce Experience

 - Configure everything in the settings menu"


## Notes ##
# chocolatey CLI documentation - https://docs.chocolatey.org/en-us/choco/
# Find a package for chocolatey - https://community.chocolatey.org/packages