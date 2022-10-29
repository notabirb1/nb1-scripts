# Uses input from the user to open chosen Directory.
 # Parameters
 param (
    [string]$dirToOpen = ""
 )
# Variables

$global:returnDir = "$PWD"
## Only ask for input if no parameter is set
if ( $dirToOpen -eq "" )
{
    $dirToOpen = Read-Host "Enter Directory"
}
# Script
if ( $dirToOpen -eq "Desktop" ) # Open Desktop
{
    cd $env:USERPROFILE\Desktop
}
if ( $dirToOpen -eq "User" ) # Open Home Dir
{
    cd $env:USERPROFILE
}
Write-Host "Return Directory = $returnDir"