# Windows C Infrastructure list
## Main Setup
* [minGW-w64 - open-source native C toolchain. Modern fork of minGW with constant updates and support for 64-Bits](http://mingw-w64.org/)
	* **Includes:** GCC, Clang and GDB
* [Visual Studio - fully native C/C++ toolchain](https://docs.microsoft.com/en-us/cpp/build/projects-and-build-systems-cpp)
	**Includes:** MSVC/C++, VS Debugger, VS build system
	* [Full info on command line compiler](https://docs.microsoft.com/en-us/cpp/build/building-on-the-command-line)
	* [Visual Studio Debugger(VS Debugger)](https://docs.microsoft.com/en-us/visualstudio/debugger/)
	* [Compiling C Programs](https://docs.microsoft.com/en-us/cpp/build/walkthrough-compile-a-c-program-on-the-command-line)
* [Cmake - build system(make is not available for windows normally)](https://cmake.org/)



# Extra
## Toolsets
* [MSYS2 - contains full UNIX toolset including a compiler, alll of the tools are suited to make native windows apps and not to port apps from UNIX](https://www.msys2.org/)
	* By default(it can be changed by adding tools path to path manually) all MSYS2 tools are only available in the MSYS2 command prompt app
* [Cygwin - contains multiple UNIX utilities ported to windows(like make) and a compiler. The compiler is not suited for making native applications, only for compiling/porting UNIX applications to windows. The applications that are compiled can't run without cygwin installed](https://cygwin.com/)
	* By default(it can be changed by adding tools path to path manually) all cygwin tools are only available in the cygwin command prompt app

## Tools
* [GNU Nano Editor](https://www.nano-editor.org/)
	* [For modern ported nano use(make sure to download stable branch or even better - binary release)](https://github.com/lhmouse/nano-win)
	* Versions before nano 2.5 include an NT folder for windows in the directoy in [sources](https://nano-editor.org/dist/)
	* Other options: cygwin includes nano, MSYS2 includes nano, git includes nano

## Compilers
* **(Legacy)**[Mingw - gcc port for windows(also it is only able to produce 32-Bit binaries, but they could still be ran on 64-Bit OS as it is x86)](https://osdn.net/projects/mingw/)
	* [Other Links](https://sourceforge.net/projects/mingw/)