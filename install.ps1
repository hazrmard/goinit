$command1 = 'Function goinit {$p=Convert-Path .;$env:_EXISTINGPATH=$env:PATH; $env:_OLDGOPATH=$env:GOPATH; $env:GOPATH=$p+":"+$env:GOPATH; $env:PATH+=";"+$p+"\bin";}'
$command2 = 'Function godie {$env:PATH = $env:_EXISTINGPATH; $env:GOPATH=$env:_OLDGOPATH; $env:_OLDGOPATH="something"; $env:_EXISTINGPATH="something"; Remove-Item env:_OLDGOPATH; Remove-Item env:_EXISTINGPATH}'
if (-Not (Test-Path $profile)) {
    New-Item $profile -type file -Force
}
Add-Content $profile  $command1
Add-Content $profile  $command2
