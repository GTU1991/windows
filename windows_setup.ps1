# Powershell script to setup windows
## To run - start powershell with administrator priviledges


# Script setup
Read-Host "Press enter to continue if you really want to execute the script"
$chocolatey_install_status = Read-Host "Are you running the script before restarting prompt(Before(y)/After(n)): "
# $folders_creation_path = 


# Install chocolatey if it hasn't been installed yet
# Chcocolatey website - https://chocolatey.org/
#	* CLI chocolatey version docs - https://docs.chocolatey.org/en-us/choco/
#		* Before uninstalling any application through windows settings or control panel check if it was installed through chocolatey and if it was then uninstall it through chocolatey
#			* List all packages installed through chocolatey - "choco list --local-only"
#			* Uninstall through chocolatey - "choco uninstall <package-name>
# 	* Packages list and search - https://community.chocolatey.org/packages
if ("y" -eq $chocolatey_install_status)
{
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

	Read-Host "You should start the powershell again as an administrator, when you are ready press Enter to quit"
	exit
}


# Install Applications using chocolatey
choco upgrade -y chocolatey
choco install -y 7zip blender virtualbox brave
choco install -y microsoft-windows-terminal vscode git mingw  # minGW-w64 is installed by mingw package, visualstudio2019-workload-nativedesktop installs the C/C++ development components
choco install -y cmake --installargs 'ADD_CMAKE_TO_PATH=User' # add cmake to the path in addition to installing


# Install Visual Studio
# Visual Studio installer CLI parameters - https://docs.microsoft.com/en-us/visualstudio/install/use-command-line-parameters-to-install-visual-studio
choco install -y visualstudio2019community # Install Visual Studio
choco install -y visualstudio2019-workload-nativedesktop --package-parameters "--add Microsoft.VisualStudio.Workload.NativeDesktop"	# Install the "C/C++ Desktop Development" workload. visualstudio2019-workload-nativedesktop package does not install anything unless parameters are passed to it specifying what to install(e.g. workloads)
# choco uninstall -y --force visualstudio2019community	# If the installation goes wrong but the Visual Studio can't be uninstalled in any way, use:


# Create the needed folders in users directory
new-item $HOME\docs -itemtype directory
new-item $HOME\source -itemtype directory
new-item $HOME\github -itemtype directory
new-item $HOME\blender -itemtype directory


# Disable unneeded features
Disable-WindowsOptionalFeature -Online -FeatureName "Internet-Explorer-Optional-amd64"
Disable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer"


# ToDo by hand
# Write-Output "To do by manually:
#  - Install steam and chrome
#  - Install drivers including using Geforce Experience
#  - Configure everything in the settings menu"


## Notes ##
# chocolatey CLI documentation - https://docs.chocolatey.org/en-us/choco/
# Find a package for chocolatey - https://community.chocolatey.org/packages
