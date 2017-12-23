<# This file was written on GITHUB and is completely untested #>
try
{
    git | Out-Null
   "Git is installed"
}
catch [System.Management.Automation.CommandNotFoundException]
{
   
}
