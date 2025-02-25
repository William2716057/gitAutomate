# 🚀 Git Automate Script
A simple Bash script that automates the process of initializing a Git repository, committing changes, and pushing them to a remote repository. 
It's useful for quickly setting up and syncing a local project with GitHub, GitLab, or any other Git hosting service.

## 📌 Features
- Initializes a new Git repository if one doesn't exist.
- Adds and commits all changes in the project directory.
- Automatically ignores the script itself (gitAutomate.sh).
- Sets up a remote repository and pushes to the main or existing branch.

## 📖 Usage
- Run the script and add the remote repository URL
```
./gitAutomate.sh https://github.com/your-username/your-repository.git
```
### ⚙️ How It Works
1. Checks if a .git directory exists. If not, it initializes a new Git repository.
2. Ensures gitAutomate.sh is ignored by adding it to .gitignore.
3. Adds all changes and commits them.
4. Configures the remote repository.
5. Pushes to the current branch or creates main if none exists.

