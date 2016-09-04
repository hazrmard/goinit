$env:PATH = $env:_EXISTINGPATH
$env:GOPATH = $env:_OLDGOPATH
$env:_OLDGOPATH="something"
$env:_EXISTINGPATH="something"
Remove-Item env:_EXISTINGPATH
Remove-Item env:_OLDGOPATH
