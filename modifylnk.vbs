Set objShell = CreateObject("WScript.Shell")

' Define parameters
strShortcut = WScript.Arguments(0)
strTargetPath = WScript.Arguments(1)

' Create shortcut
Set objShortcut = objShell.CreateShortcut(strShortcut)
objShortcut.TargetPath = strTargetPath
objShortcut.Save