#!/bin/bash

echo "📁 Current directory: $(pwd)"
read -p "Enter initial commit message: " COMMIT_MSG
read -p "Enter GitHub remote URL: " REMOTE_URL

echo "🚀 Initializing git repo in current directory..."
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
