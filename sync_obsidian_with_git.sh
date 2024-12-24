#!/bin/bash

# Navigate to Obsidian vault folder
cd "D:/self-study-notes" || exit

# Pull the latest changes
git pull origin main

# Check for changes
if [[ $(git status --porcelain) ]]; then
    # Add and commit only if there are changes
    git add .
    git commit -m "Auto-sync on $(date)"
    git push origin main
else
    echo "No changes to sync at $(date)"
fi
