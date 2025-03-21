# Define username
git.exe config --global user.name "Your Name"

# Define user Email
git.exe config --global user.email "you@example.com"

# show status of local repo
git.exe status

# set git bash proxy
git.exe config --global https.proxy "https://IP:port"

# update local branch without changing working directory
git.exe fetch origin

# Merge regardless of unrelated history
git.exe merge "<remote>"/"<branch>"

# merge remote repo branch with local repo branch despite unrelated histories
git.exe merge "<remote>"/"<branch>" --allow-unrelated-histories
# Example: git.exe merge "origin"/"main" --allow-unrelated-histories


# sync local repo branch with remote repo branch
git.exe branch --set-upstream-to="<remote>"/"<branch>" "local_branch"
# Example: git.exe branch --set-upstream-to="origin"/"main" "<main>"

# new local branch tracks remote branch
git.exe branch --track "<new-local-branch>" "<remote-branch>"
# Example: git.exe branch --track "master" "<origin/master>"

# add local repo to remote repo
git.exe remote add "<remote>" "<remote-repo-url>"
# Example: git.exe remote add "origin" "https://github/username/repo.git"

# delete local branch
git.exe branch -d "<branch>"
# Example: git.exe branch -d "master"

# delete remote branch
git.exe push origin --delete "<branch>"

# pull changes from remote repo despite unrelated histories
git.exe pull "<remote>" "<branch>" --allow-unrelated-histories
# Example: git.exe pull "origin" "main" --allow-unrelated-histories

# show all local commits (use q to exit)
git.exe log --oneline


# show all remote commits avoid pager
git.exe --no-pager log --oneline

# hard reset local repo commit
git.exe reset --hard "<commit-hash>"

# pull changed from remote repo branch
git.exe pull "<remote_repo>" "<branch>"

# delete a file from local repo (You need to commit changes)
git.exe rm -rf --cached "path/to/file"

# Configure local repo branch type globally (git config settings)
git.exe config --global init.defaultBranch main