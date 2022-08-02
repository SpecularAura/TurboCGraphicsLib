# TurboCGraphicsLib
This repo contains graphics.h source code

## How to use it in a program
### Building libgbi.a
- Download and extract or clone the repo in a fresh folder
- Go to the directory where the files are extracted using `cd`
- Build libgbi.a by running the command `mingw32-make`
- libgbi.a will be found in the bin subdirectory

### Using it in programs (Command Line and VSCode)
- Copy graphics.h, Makefile from the root directory and libgbi.a from the bin subdirectory to the location of the program which reqires graphics.h
- To build the exe file execute the command `ming32-make SRC=(Name of your source file)`  
_For e.g. if your source file is named TestGraphics.cpp Then the command would be `ming32-make SRC=TestGraphics.cpp` _
- 
  
