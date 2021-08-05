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
## Compilers
* **(Legacy)**[Mingw - gcc port for windows(also it is only able to produce 32-Bit binaries, but they could still be ran on 64-Bit OS as it is x86)](https://osdn.net/projects/mingw/)
	* [Other Links](https://sourceforge.net/projects/mingw/)

## Toolsets
* [MSYS2 - suit of modern UNIX applications ported to windows, unlike cygwin utilities are for making native applications](https://www.msys2.org/)
* [Cygwin - contains multiple UNIX utilities ported to windows(like make) and a compiler. The compiler is not suited for making native applications, only for compiling/porting UNIX applications to windows. The applications that are compiled can't run without cygwin](https://cygwin.com/)