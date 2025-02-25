#!/bin/bash

# CHeck run with a remote URL argument
if [ -z "$1" ]; then
    echo "Usage: $0 <remote-repository-url>"
    exit 1
fi

# Check if .git directory exists
if [ ! -d ".git" ]; then
    echo "Initializing new Git repository..."
    git init
else
    echo "Already initialized."
fi

# Add all changes
git add .

# Commit changes
git commit -m "Updated" 2>/dev/null || echo "No changes to commit."

# Check if remote 'origin' already exists
if git remote get-url origin >/dev/null 2>&1; then
    echo "Remote 'origin' already set."
else
    echo "Adding remote repository: $1"
    git remote add origin "$1"
fi

# Push to the correct branch (master/main)
CURRENT_BRANCH=$(git branch --show-current)
#ignore gitAutomate.sh file
echo "gitAutomateTest.sh" >> .gitignore

if [ -z "$CURRENT_BRANCH" ]; then
    echo "No active branch detected. Creating and using 'main'."
    git checkout -b main
    CURRENT_BRANCH="main"
fi

git push -u origin "$CURRENT_BRANCH"
