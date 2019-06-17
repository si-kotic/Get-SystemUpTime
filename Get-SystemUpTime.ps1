Function Get-SystemUpTime {
    $os = Get-WmiObject -Class Win32_OperatingSystem
    $SysUpTime = (Get-Date) - $os.ConvertToDateTime($os.LastBootUpTime)
    Write-Output ($SysUpTime.Days.toString() + " days, " + $SysUpTime.Hours.toString() + " hours, " + $SysUpTime.Minutes.toString() + " minutes and " + $SysUpTime.Seconds.toString() + " seconds.")
}