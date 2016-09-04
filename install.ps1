$command1 = 'Function goinit {$p=Convert-Path .;$env:GOPATH=$p; $env:PATH+=";"+$p+"\bin";}'
$command2 = 'Function godie {$env:PATH = $env:PATH -Replace [Regex]::Escape($env:GOPATH+"\bin"),$NULL; Remove-Item env:GOPATH;}'
if (-Not (Test-Path $profile)) {
    New-Item $profile -type file -Force
}
Add-Content $profile  $command1
Add-Content $profile  $command2
