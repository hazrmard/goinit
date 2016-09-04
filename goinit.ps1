$env:_EXISTINGPATH=$env:PATH
$env:_OLDGOPATH=$env:GOPATH
$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
$env:GOPATH=$scriptPath+";"+$env:GOPATH
$env:PATH += ";" + $scriptPath + "\bin" + ";" + $scriptPath
