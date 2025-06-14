@echo off
set /p REPO_NAME="Enter the folder/repo name: "
set /p COMMIT_MSG="Enter initial commit message: "
set /p REMOTE_URL="Enter GitHub remote URL: "

REM Navigate to repo folder
cd %REPO_NAME%

echo Initializing git repo...
git init

echo Adding files...
git add .

echo Making initial commit...
git commit -m "%COMMIT_MSG%"

echo Renaming branch to main...
git branch -M main

echo Adding remote origin...
git remote add origin %REMOTE_URL%

echo Pushing to remote repo...
git push -u origin main

echo Done ✅
pause
