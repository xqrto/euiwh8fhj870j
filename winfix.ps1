
param (
    [string]$Mode = "--help"
)
if ($Mode -eq "--help") {
    Write-Output """
Usage: winfix.ps1 --dns|--ip|--all
       Diagnoses or resets Windows settings.
    """
    exit
}
if ($Mode -eq "--dns") {
    ipconfig /flushdns
    Write-Output "DNS cache flushed."
}
elif ($Mode -eq "--ip") {
    ipconfig /release
    ipconfig /renew
    Write-Output "IP renewed."
}
elif ($Mode -eq "--all") {
    ipconfig /flushdns
    ipconfig /release
    ipconfig /renew
    Write-Output "All fixes applied."
}
