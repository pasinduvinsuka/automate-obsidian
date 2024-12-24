Set objShell = CreateObject("WScript.Shell")
objShell.Run "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File ""D:\Journey\automate-obsidian\background-sync.ps1""", 0, False
