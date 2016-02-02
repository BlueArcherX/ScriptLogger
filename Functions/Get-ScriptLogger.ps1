<#
.SYNOPSIS
    Get the current script logger.

.DESCRIPTION
    Returns an object with the current configuration of the script logger
    inside this PowerShell session.

.EXAMPLE
    C:\> Get-ScriptLogger
    Get the current script logger object.
#>

function Get-ScriptLogger
{
    [CmdletBinding()]
    param
    (
    )

    if ($Global:ScriptLogger -ne $null)
    {
        return $Global:ScriptLogger
    }
    else
    {
        throw 'Script logger not found!'
    }
}
