$command = 'Function goinit {$p=Convert-Path .;$env:GOPATH=$p; $env:PATH+=";"+$p+"\bin";}'
if (-Not (Test-Path $profile)) {
    New-Item $profile -type file -Force
}
Add-Content $profile  $command
