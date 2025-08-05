@echo off
echo Current directory: %CD%
set /p COMMIT_MSG="Enter initial commit message: "
set /p REMOTE_URL="Enter GitHub remote URL: "

echo Initializing git repo in current directory...
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
