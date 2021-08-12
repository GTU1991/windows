## User Specific configuration and data
* Configuration(and extra data) - if the configuartion files(or some other extra data) of the program aren't located in it's location folder, they can be in
  * \Users\ - `Some programs just store their config files or folders directly in the users home directory`
  * \Users\USERNAME\Documents
  * [\Users\USERNAME\AppData](https://www.howtogeek.com/318177/what-is-the-appdata-folder-in-windows/) `(It is a hidden folder)`
    * AppData\Roaming - `Contains data and settings that are ment to be transfered between computers, e.g. firefox bookmarks)`
    * AppData\Local - `Contains data and settings which are not ment to be transfered between computers and are specific to the current computer(or are just too large to be transfered) like cache`
    * AppData\LocalLow - `Contains data and settings of applications which are ran with restricted secutiry settings and don't have access to AppData\Local`

## [Environment variables](https://docs.microsoft.com/en-us/windows/deployment/usmt/usmt-recognized-environment-variables)
* Description - environment variables are system wide variables that are created by the OS and are set to a certain value(could be accessed using programs or a shell)
* [Interacting with environment variables](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_environment_variables)
  * List all environment variables - `Get-ChildItem Env:`
  * Display contents of the environment variable - `$Env:<variable-name>` or `echo $Env:<variable-name>`
  * Change environment var contents - `$Env:<variable-name> = "<new-value>"`
* `PATH` is also an environment variable that could be changed and accessed in the same way as others, this variable contains the list of dirs where shell can search for commands(binaries)
