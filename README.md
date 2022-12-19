# TurboC with VSCode
The project is a collection of batch scripts that can be used to automate running the code in TurboC. All the source files within the Code folder can be run by using the build shortcut of tasks (`Ctrl + Shift + B`).  
The project uses DosBox-x and uses the 4DOS command processor provided with it to compile the file using the TurboC compiler and execute it.

As this is a set of batch scripts it can run on any text-editor
The Setup provided in the repo initializes a tasks.json file to execute the script with necessary arguments stores in the settings.json

As of now it can only run on Windows as they are batch scripts

## Setting Up
1. Extract the folder somewhere appropriate
2. Open the folder and Run (Double-click) Setup
3. The folder named `Code` should contain all the source files (The C and C++ files)
4. To Run (Compile and Execute) the Active file you must run the Default Build Task (KeyBind: `Ctrl + Shift + B`)

## Within DosBox
1. After Running A Window will open
2. Type Run within the window
3. If there are no errors the program will be executed
4. In case of errors the window will show it (Note that the line numbers are not correct so don't rely on it for finding the errors. This is a limitation of TurboC itself and nothing can be done)