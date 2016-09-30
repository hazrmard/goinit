$env:_EXISTINGPATH=$env:PATH
$env:_OLDGOPATH=$env:GOPATH
$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
$env:GOPATH=$scriptPath
if ($env:_OLDGOPATH.length -gt 0)
    {$env:GOPATH+=+";"+$env:_OLDGOPATH;}
$env:PATH += ";" + $scriptPath + "\bin" + ";" + $scriptPath
