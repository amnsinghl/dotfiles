Import-Module posh-git
Import-Module oh-my-posh
Set-Theme PowerlinePlus
Import-Module PSReadLine

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History

# Shows navigable menu of all options when hitting Tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Autocompleteion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Chord "RightArrow" -Function ForwardWord

#Set the color for Prediction (auto-suggestion)
#Set-PSReadlineOption -Colors @{Prediction = 'DarkGreen' }

$installPath = &"C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe" -version 16.0 -property installationpath
Import-Module (Join-Path $installPath "Common7\Tools\Microsoft.VisualStudio.DevShell.dll")
Function devshellfunc {Enter-VsDevShell -VsInstallPath $installPath -SkipAutomaticLocation}
Set-Alias -Name devshell -Value devshellfunc

Function dmsshellfunc {C:\Torus\TorusClient.ps1 -Mode connect -ServiceInstance MultiTenant -UserType OCE -DMS}
Set-Alias -Name dms -Value dmsshellfunc
