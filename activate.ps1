$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
$env:GOPATH= $scriptPath
$env:PATH += ";" + $scriptPath + "\bin"
