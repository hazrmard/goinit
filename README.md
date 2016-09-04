# goinit
Dynamic workspaces for Go  
  
This repository contains a set of scripts which, when invoked, set the `GOPATH` and `PATH` environment variables to the current directory or the directory of the invoked script.  
  
##Powershell
If you use powershell as your console, you'll need first to enable scripts. Open powershell as administrator and:
```powershell
Set-ExecutionPolicy RemoteSigned
```
  
There are two options:  
###1. Activation Script
Copy the file `activate.ps1` to your Go workspace folder. Whenever you call `activate.ps1` (from any location) it'll set `GOPATH` to the script's directory and add the `bin` subdirectory to the system `PATH`. The changes will only apply for the current console session.  
```
SomeFolder\
WorkspaceFolder\
  |
  |---activate.ps1
  |---bin\
  |---src\
```
  
###2. Profile Function
Run `install.ps1`. It will add a function `goinit` to the powershell `$profile` file. So whenever you enter `goinit` in a powershell session, the current working directory will become the Go workspace.  
  
##Cmd
Copy `activate.bat` to each Go workspace. Running the batch script will set the `GOPATH` and `PATH` variables to the directory of the script. Changes only apply for the current console session.
