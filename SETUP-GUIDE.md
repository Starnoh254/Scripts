# Git Repository Initialization Scripts - Setup Guide

## Overview

This repository contains automated scripts for initializing Git repositories on both Windows and Linux/macOS platforms.

## Scripts

- **`init-git.bat`** - Windows batch script
- **`init-git.sh`** - Linux/macOS bash script

## Recent Changes

### Version 2.0 Improvements (Windows Script)

**What Changed:**

- Removed the need to specify folder/repo name
- Script now works with the current working directory
- Added current directory display for user confirmation
- Simplified user interaction

**Before:**

```bat
set /p REPO_NAME="Enter the folder/repo name: "
cd %REPO_NAME%
```

**After:**

```bat
echo Current directory: %CD%
# Script works in current directory
```

**Benefits:**

- More intuitive workflow
- No path confusion
- Works from any directory
- Safer operation (no accidental wrong folder initialization)

## Installation Guide

### Making Scripts Available System-Wide

#### For Windows (`init-git.bat`)

1. **Create a Scripts Directory:**

   ```cmd
   mkdir C:\Scripts
   copy "C:\Users\user\Desktop\Script\init-git.bat" "C:\Scripts\"
   ```

2. **Add to PATH (Method 1 - GUI):**

   - Press `Win + R`, type `sysdm.cpl`, press Enter
   - Click "Environment Variables..."
   - Under "System variables", find "Path" and click "Edit..."
   - Click "New" and add: `C:\Scripts`
   - Click "OK" on all dialogs
   - Restart Command Prompt

3. **Add to PATH (Method 2 - PowerShell as Admin):**

   ```powershell
   [Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Scripts", [EnvironmentVariableTarget]::Machine)
   ```

4. **Verify Installation:**
   ```cmd
   # Open new Command Prompt and test
   cd C:\any\project\folder
   init-git
   ```

#### For Linux/macOS (`init-git.sh`)

1. **Make executable and copy to system location:**

   ```bash
   chmod +x init-git.sh
   sudo cp init-git.sh /usr/local/bin/init-git
   ```

2. **Or add to your personal bin directory:**
   ```bash
   mkdir -p ~/bin
   cp init-git.sh ~/bin/init-git
   chmod +x ~/bin/init-git
   echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
   source ~/.bashrc
   ```

## Usage

### New Workflow (v2.0)

1. **Navigate to your project folder:**

   ```cmd
   cd C:\path\to\your\project
   ```

2. **Run the script:**

   ```cmd
   init-git
   ```

3. **Follow the prompts:**
   - Enter initial commit message
   - Enter GitHub remote URL

### Old Workflow (v1.0) - Deprecated

```cmd
# User had to know exact paths
init-git
# Then specify folder name when prompted
```

## Script Functionality

Both scripts perform the following operations:

1. **Display current directory** (v2.0 feature)
2. **Prompt for user inputs:**
   - Initial commit message
   - GitHub remote URL
3. **Initialize Git repository** in current directory
4. **Add all files** to staging area
5. **Create initial commit** with provided message
6. **Rename branch** to `main`
7. **Add remote origin** with provided GitHub URL
8. **Push** initial commit to GitHub

## Requirements

- Git installed and available in PATH
- Valid GitHub repository URL
- Appropriate permissions for the target directory

## Troubleshooting

### Common Issues

1. **"git is not recognized"**

   - Ensure Git is installed and added to PATH
   - Restart terminal after Git installation

2. **"Permission denied"**

   - Ensure you have write permissions in the target directory
   - On Linux/macOS, use `sudo` if needed

3. **"remote origin already exists"**

   - The directory already has a Git repository
   - Use `git remote -v` to check existing remotes

4. **Script not found after adding to PATH**
   - Restart terminal/command prompt
   - Verify PATH variable includes script directory
   - Check script permissions (Linux/macOS)

### Verification Commands

```cmd
# Windows
where init-git
echo %PATH%

# Linux/macOS
which init-git
echo $PATH
```

## Examples

### Example Usage Session

```cmd
C:\> cd C:\Projects\MyNewProject
C:\Projects\MyNewProject> init-git

Current directory: C:\Projects\MyNewProject
Enter initial commit message: Initial project setup
Enter GitHub remote URL: https://github.com/username/MyNewProject.git

Initializing git repo in current directory...
Adding files...
Making initial commit...
Renaming branch to main...
Adding remote origin...
Pushing to remote repo...
Done ✅
```

## Future Enhancements

- [ ] Add error handling for network issues
- [ ] Support for SSH URLs
- [ ] Option to create .gitignore file
- [ ] Interactive branch name selection
- [ ] Dry-run mode to preview actions

## Version History

- **v2.0** - Current working directory support, improved UX
- **v1.0** - Basic functionality with folder navigation

---

**Note:** Always ensure you're in the correct directory before running the script, as it will initialize Git in your current location.
