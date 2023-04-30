# TurboC with VSCode
The project is a collection of batch scripts that can be used to automate running the code in TurboC. All the source files within the Code folder can be run by using the build shortcut of tasks (`Ctrl + Shift + B`).  
The project uses DosBox-x and uses the 4DOS command processor provided with it to compile the file using the TurboC compiler and execute it.

As this is a set of batch scripts it can run on any text-editor, however undocumented.
The Setup provided in the repo initializes a tasks.json file to execute the script with necessary arguments stores in the settings.json

As of now it can only run on Windows as they are batch scripts.
## Prerequisites
- VSCode installed and it opens when code is typed in the command line (i.e. added to PATH environment variable).

## Setting Up
1. Extract the folder somewhere appropriate.
2. Open the folder and Run (Double-click) `Setup.bat`.
3. The folder named `Code` should contain all the source files (The C and C++ files).
4. To Run (Compile and Execute) the Active file you must run the Default Build Task (KeyBind: `Ctrl + Shift + B`).

## Within DosBox
1. After Running A Window will open.
2. Type `run` within the window.
3. If there are no errors the program will be executed.
4. In case of errors the window will show it (Note that the line numbers may not be correct so don't rely on it for finding the errors).

## Problems with TURBOC
There are a lot of problems with TURBOC which are particularly annoying and can't be changed. 
For Computer Graphics we are forced to use it as there are no alternative libraries made for gcc or other modern compilers.
Here are some issues listed out:
- Automatic casting doesn't work as intended: 
    When casting from a float to integer or vice versa we have to explicitly cast it, if left upto to the compiler for it a lot of weird behaviour shows up.
    
- Declaring variables before any other statement can be executed.
    You first need to declare the variables at the start of the function, you cannot declare them anywhere in between
