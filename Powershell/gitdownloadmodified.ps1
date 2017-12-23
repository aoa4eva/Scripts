<# #>

set-executionpolicy remotesigned
try
{
    git | Out-Null
   "Git is installed"
}
catch [System.Management.Automation.CommandNotFoundException]
{

    $gitLink="https://github.com/git-for-windows/git/releases/download/v2.15.1.windows.2/Git-2.15.1.2-64-bit.exe"


    $saveas = "c:\users\aoa4eva\downloads\git.exe"


    $startop = Get-Date


    Invoke-WebRequest -Uri $gitLink -OutFile $saveas


    Write-Output "This operation took $((Get-Date).Subtract($startop).Seconds) seconds to execute"


    & $saveas | Out-Null


    Remove-Item -path $saveas -recurse -force


    <# Not tested ...#>


    set-executionpolicy restricted
}
