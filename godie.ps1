$env:PATH = $env:PATH -Replace [Regex]::Escape($env:GOPATH+"\bin"),$NULL
$env:PATH = $env:PATH -Replace [Regex]::Escape($env:GOPATH),$NULL
Remove-Item env:GOPATH
