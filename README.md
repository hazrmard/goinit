# goinit
Dynamic workspaces for Go  

This repository contains a set of scripts which, when invoked, append the current directory or the
directory of the invoked script to the beginning of `GOPATH` and `PATH` environment variables.  

##Powershell
If you use powershell as your console, you'll need first to enable scripts. Open powershell as administrator and:
```powershell
Set-ExecutionPolicy RemoteSigned
```

There are two options:  
###1. Activation Script
Copy the files `goinit.ps1` and `godie.ps1` to your Go workspace folder. Whenever you call `goinit.ps1`
(from any location) it'll append the script's directory to the beginning of  `GOPATH` and add the `bin`
subdirectory to the system `PATH`.  `godie.ps1` (from any location) will reset changes. The changes will
only apply for the current console session.  
```
SomeFolder\
WorkspaceFolder\
  |
  |---goinit.ps1
  |---godie.ps1
  |---bin\
  |---src\
```

###2. Profile Function
Run `install.ps1`. It will add functions `goinit` and `godie` to the powershell `$profile` file. So
whenever you enter `goinit` in a powershell session, the current working directory will become the Go
workspace. `godie` will reverse changes.  

Note: You need to reload your powershell profile/console after running install for the functions to
become available.

##Cmd
Copy `goinit.bat` and `godie.bat` to each Go workspace. Running `goinit` will add the directory of the
script to the `GOPATH` and `PATH` variables to . Running `godie` will restore changes. Changes only apply
for the current console session.

##Bash
Append the contents of `goinit.sh` to your `~/.bashrc` file and reload your profile:  
```bash
$ cat goinit.sh >> ~/.bashrc
$ source ~/.bashrc
```
Then typing `goinit` and `godie` should set and unset the relevant environment variables and make current
directory a Go workspace. Changes do not persist across sessions.
