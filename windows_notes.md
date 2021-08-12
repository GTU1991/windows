## User Specific configuration and data
* Configuration(and extra data) - if the configuartion files(or some other extra data) of the program aren't located in the folder where it is installed, they can be in
  * [C:\ProgramData](https://www.howtogeek.com/278562/what-is-the-programdata-folder-in-windows/) - `Folder to store configuration and data which is meant to be for all users of the computer and not local to some specific user`
  * Registry - `A lot of programs store data and settings that isn't meant to be edited in the windows registry`
  * Programs location directory(e.g. C:\Program Files\<program_name>) - `Some programs just store settings in the folder they were installed to
  * C:\Users\USERNAME\ - `Some programs just store their config files or folders directly in the users home directory, most of these apps are either old or non-native`
  * C:\Users\USERNAME\Documents - `Common place to store configuration files which are meant to be edited by users`
  * [C:\Users\USERNAME\AppData](https://www.howtogeek.com/318177/what-is-the-appdata-folder-in-windows/) - `(It is a hidden folder)`
    * Users\AppData\Roaming - `Contains data and settings that are ment to be transfered between computers, e.g. firefox bookmarks)`
    * Users\AppData\Local - `Contains data and settings which are not ment to be transfered between computers and are specific to the current computer(or are just too large to be transfered) like cache`
    * Users\LocalLow - `Contains data and settings of applications which are ran with restricted secutiry settings and don't have access to AppData\Local`

## [Environment variables](https://docs.microsoft.com/en-us/windows/deployment/usmt/usmt-recognized-environment-variables)
* Description - environment variables are system wide variables that are created by the OS and are set to a certain value(could be accessed using programs or a shell)
* [Interacting with environment variables](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_environment_variables)
  * List all environment variables - `Get-ChildItem Env:`
  * Display contents of the environment variable - `$Env:<variable-name>` or `echo $Env:<variable-name>`
  * Change environment var contents - `$Env:<variable-name> = "<new-value>"`
* `PATH` is also an environment variable that could be changed and accessed in the same way as others, this variable contains the list of dirs where shell can search for commands(binaries)
