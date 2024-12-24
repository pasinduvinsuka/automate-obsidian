while ($true) {
    # Run the Git Bash script and capture the output
    $gitOutput = & "C:\Program Files\Git\bin\bash.exe" -c '"D:/Journey/automate-obsidian/sync_obsidian_with_git.sh"'
    
    # Display the output in the PowerShell window
    Write-Host $gitOutput
    
    # Sleep for 60 second before repeating
    Start-Sleep -Seconds 60
}

