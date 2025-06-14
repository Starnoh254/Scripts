#!/bin/bash

read -p "Enter the folder/repo name: " REPO_NAME
read -p "Enter initial commit message: " COMMIT_MSG
read -p "Enter GitHub remote URL: " REMOTE_URL

# Navigate to repo folder
cd "$REPO_NAME" || { echo "❌ Folder not found"; exit 1; }

echo "🚀 Initializing git repo..."
git init

echo "📦 Adding files..."
git add .

echo "📝 Making initial commit..."
git commit -m "$COMMIT_MSG"

echo "🌿 Renaming branch to main..."
git branch -M main

echo "🔗 Adding remote origin..."
git remote add origin "$REMOTE_URL"

echo "📤 Pushing to remote repo..."
git push -u origin main

echo "✅ Done!"
