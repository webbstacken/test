# https://forums.hak5.org/topic/41729-running-powershell-in-memory/
# Usage cmd:
# >powershell iex (New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/webbstacken/test/main/t1.ps1')
# Usage ps:
# >iex (New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/webbstacken/test/main/t1.ps1')
$filename = dump.txt

Get-ComputerInfo > $filename
$PSVersionTable >> $filename
echo "Get-ExecutionPolicy" >> $filename
Get-ExecutionPolicy >> $filename
