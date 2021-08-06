## Creating a mod
1. [Setup the Source SDK 2013 environment](https://developer.valvesoftware.com/wiki/Source_SDK_2013)
	* **Make Sure To Complete all Steps**
	* `Getting the code` step
		* Use command line git to clone the SDK git repo
		* Just for convinience, clone valve's `source-sdk-2013` repo into `main-storage-foler(any)\source\`
	* `Step One: Installing Visual Studio`
		* Just for convinience, install visual studio into `Program Files (x86)\Microsoft Visual Studio\2013` folder
	* `Step Two: Installing the Microsoft Speech SDK`
		* By `<SDKROOT>` in Speech SDK step, the cloned [source SDK git repo](https://github.com/ValveSoftware/source-sdk-2013) is meant
		* Normally just copy it into the sp folder as it is for singleplayer, while mp is for mods that will be hosted on the server
	* `Step Three: Compiling the Source SDK and preparing project files`
		* Do not compile files in mp if the mod isn't for hosting on a server
	* `Step Four : Building the shaders`
		* Read and follow everything on shader [wiki link](https://developer.valvesoftware.com/wiki/Source_SDK_2013:_Shader_Authoring)
		* `Installing Perl` step
			* To install the perl package using perl package manager type `ppm install String-CRC32`. [Instruction's source](https://code.activestate.com/ppm/String-CRC32/).
		* `Creating your game_shader_dx9 project` step
			* All direcotry path's specified here are meant to be prefixed with `<SDKROOT>\<MODE>\`. `<SDKROOT>` is the cloned [source SDK git repo](https://github.com/ValveSoftware/source-sdk-2013), `<MODE>` is either the sp(singleplayer) or mp(multiplayer) folder
			* In the first step it means that you need to create a copy of `game_shader_dx9_episodic.vpc` file and rename that copy to `game_shader_dx9_<your_modname>.vpc`


## Solving Errors
* When installing VS2013, it gives "Unable to locate package source" error
	1. On [older Visual Studio versions website](https://visualstudio.microsoft.com/ru/vs/older-downloads/), go to the 2013 section and press download
	2. The download button leads to the website with [2013 Visual Studio versions](https://my.visualstudio.com/Downloads?q=visual%20studio%202013&wt.mc_id=o~msft~vscom~older-downloads)
	3. On the website with 2013 Visual Studio versions, download the `Visual Studio Community 2013 Update 5` file
	4. In file explorer right click on the downloaded `iso` file and press on `Mount`
	5. Copy all the files from the mounted iso to some folder on the computer
	6. Go to `This PC` in explorer, right click on mounted iso and press `Eject`
	7. Go to folder with extracted files and run the `.exe` file
	* Just for convinience, install visual studio into `Program Files (x86)\Microsoft Visual Studio\2013` folder
	* [Video tutorial](https://www.youtube.com/watch?v=TPI9kuAWdCk)




# Installing source SDK
https://developer.valvesoftware.com/wiki/My_First_Mod
## [Install Source SDK 2013](https://developer.valvesoftware.com/wiki/Source_SDK_2013)

## Resources
* [Tutorials](https://developer.valvesoftware.com/wiki/Category:Tutorials)