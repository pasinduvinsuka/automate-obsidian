# Obsidian Automatic Sync with Git 

![image](https://github.com/user-attachments/assets/66dc96f4-86fd-47a2-9047-f1702a4bd550)


This repository provides a solution to **automatically sync your Obsidian vault** using Git. It allows seamless synchronization of your notes across multiple devices without the need for manual intervention. The script ensures that any changes made to your vault are pushed to a remote Git repository.

### Features:

- **Automatic Sync**: Syncs your Obsidian vault with Git every 10 minutes (can be customized).
- **Invisible Execution**: Runs in the background without opening a PowerShell or Git Bash window.
- **Cross-Device Sync**: Use GitHub or any Git server to keep your notes updated across devices.
- **Logging**: Keep track of synchronization activities (optional logging feature).

---

## Prerequisites

Before running the script, ensure you have the following:

- **Git** installed and accessible via the command line.
- **Obsidian Vault** initialized as a Git repository (i.e., `git init` inside your vault).
- **GitHub or other Git repository** where your vault is pushed.

---

## Setup Instructions

### Step 1: Clone the Repository

Clone this repository to your local machine using the following command:

```bash
git clone https://github.com/yourusername/obsidian-sync.git
```

### Step 2: Configure Git

Ensure your Obsidian vault is initialized as a Git repository. Navigate to your vault directory and initialize Git if it's not done already:

```bash
cd path/to/your/obsidian-vault
git init
git remote add origin https://github.com/yourusername/your-repo.git
```

You can check the configuration by running:

```bash
git remote -v
```

This should display the remote repository URL.

### Step 3: Download the Sync Script

Download the sync script (`sync_obsidian_with_git.sh`) from this repository or create your own based on the example in this repo.

### Step 4: Set Up Invisible Script Execution

#### Create a VBScript Wrapper:

Open a text editor and paste the following VBScript:

```vbscript
Set objShell = CreateObject("WScript.Shell")
objShell.Run "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File ""D:\\Journey\\automate-obsidian\\sync_obsidian_with_git.ps1""", 0, False
```

Save this as `sync_obsidian.vbs`.

#### Add to Startup:

To ensure the script runs automatically, add the VBScript to your Windows registry:

1. Open **Registry Editor** (`regedit`).
2. Navigate to `HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Run`.
3. Right-click and create a new **String Value**.
4. Set the value name as `ObsidianSync` and the value data to the full path of the `.vbs` file.

Example:

```text
"C:\\Path\\To\\sync_obsidian.vbs"
```

### Step 5: Test the Setup

1. **Restart Your Computer** or log off and log back in to check if the script runs automatically.
2. The PowerShell script should run invisibly in the background, syncing your notes.

---

## How It Works

- **Git Pull**: The script fetches the latest changes from the remote repository to ensure your local notes are up to date.
- **Git Push**: If there are changes in the vault, the script automatically commits and pushes them to the remote repository.
- **Background Operation**: Using a VBScript wrapper, the PowerShell script is run invisibly, without showing any windows, ensuring it operates seamlessly in the background.

---

## Customization

You can modify the script to suit your needs:

- **Sync Interval**: Change the sync interval by adjusting the `Start-Sleep` duration in the PowerShell script.

```powershell
Start-Sleep -Seconds 600  # Sync every 10 minutes
```

- **Logging**: To enable logging, modify the script to log output to a file.

---

## Troubleshooting

- **PowerShell Window Visible**: If the PowerShell window still appears, ensure that the VBScript is configured correctly and set the `-WindowStyle Hidden` argument.
- **Script Not Running**: Check your registry settings and ensure the VBScript path is correct.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Contribution

Feel free to contribute to this project by submitting issues, feature requests, or pull requests. Your suggestions are always welcome!
"""

