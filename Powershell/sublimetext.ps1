<# Modified gitdownload for Sublime Text.
	Research: An arry (or smomething) of files, so that this can be done with a 'for' statement. 
	That would be interesting. 
#>
$sublimedownload="https://download.sublimetext.com/Sublime%20Text%20Build%203143%20x64%20Setup.exe"
set-executionpolicy remotesigned
$saveas = "c:\users\aoa4eva\downloads\sublimetext.exe"
$startop = Get-Date
Invoke-WebRequest -Uri $sublimedownload -OutFile $saveas
Write-Output "This operation took $((Get-Date).Subtract($startop).Seconds) seconds to execute"
& $saveas | Out-Null
Remove-Item -path $saveas -recurse -force

<# Not tested ...#>
set-executionpolicy restricted
