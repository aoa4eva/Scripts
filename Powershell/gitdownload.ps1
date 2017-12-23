<# 
	@aoa4eva: 23 Decmeber 2017
	My First Powershell script:

	This script does the following: 
	
	1. Downloads GIT SCM for Windows
	2. Opens up the exe file it was saved to (in the Dowloads folder) 
	3. Deletes the file once the user closes the Git Setup application. Note, the applicaction DOES NOT HAVE TO BE SUCCESSFUL to be deleted. 
	
#>
set-executionpolicy remotesigned
$gitLink="https://github.com/git-for-windows/git/releases/download/v2.15.1.windows.2/Git-2.15.1.2-64-bit.exe"
$saveas = "c:\users\aoa4eva\downloads\git.exe"
$startop = Get-Date
Invoke-WebRequest -Uri $gitLink -OutFile $saveas
Write-Output "This operation took $((Get-Date).Subtract($startop).Seconds) seconds to execute"
& $saveas | Out-Null
Remove-Item -path $saveas -recurse -force