# Git Repository Initialization Scripts

This repository contains two scripts to automate the process of initializing a new Git repository, making the first commit, setting the main branch, adding a remote GitHub repository, and pushing the initial commit. Both Windows and Linux platforms are supported.

## Scripts

- **init-git.sh**  
  Bash script for Linux/macOS environments.

- **init-git.bat**  
  Batch script for Windows environments.

## What They Do

1. Prompt for:
   - Folder/repo name
   - Initial commit message
   - GitHub remote URL

2. Navigate to the specified folder.

3. Initialize a new Git repository.

4. Add all files in the folder to the repository.

5. Create the first commit with your provided message.

6. Rename the default branch to `main`.

7. Add the remote origin using your provided GitHub URL.

8. Push the initial commit to the `main` branch on GitHub.

## Usage

### On Linux/macOS

```sh
bash init-git.sh
```

### On Windows

```bat
init-git.bat
```

Follow the prompts in either script to enter:
- The folder/repo name (relative or absolute path)
- The initial commit message
- The GitHub remote URL (e.g., `https://github.com/username/repo.git`)

## Requirements

- [Git](https://git-scm.com/) installed and available in your PATH
- Bash shell for Linux/macOS
- Command Prompt for Windows

## Example

```sh
# Linux/macOS
$ bash init-git.sh
Enter the folder/repo name: my-new-project
Enter initial commit message: Initial commit
Enter GitHub remote URL: https://github.com/username/my-new-project.git
```

```bat
:: Windows
C:\> init-git.bat
Enter the folder/repo name: my-new-project
Enter initial commit message: Initial commit
Enter GitHub remote URL: https://github.com/username/my-new-project.git
```

The script will initialize the repo, commit, and push to GitHub automatically.