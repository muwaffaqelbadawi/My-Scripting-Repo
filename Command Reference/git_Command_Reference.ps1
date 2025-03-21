# Define username
git.exe config --global user.name "Your Name"

# Define user Email
git.exe config --global user.email "you@example.com"

# show status of local repo
git.exe status

# set git bash proxy
git.exe config --global https.proxy "https://IP:port"

# fetch remote repo
git.exe fetch origin

# Merge regardless of unrelated history
git.exe merge origin/main --allow-unrelated-histories

# sync loca repo branch with remote repo branch
git.exe branch --set-upstream-to=origin/"<remote_branch>" "local_branch"

# add local repo to remote repo
git.exe remote add origin "path/to/remote/repository"

# delete local branch
git.exe branch -d master

# delete remore branch
git.exe push origin --delete "<branch>"

# show all local commits
git.exe log --oneline

# hard reset local repo commit
git.exe reset --hard "<commit-hash>"

# pull changed from remore repo branch
git.exe pull "<remote_repo>" "<branch>"

# delete a file from local repo (You need to commit changes)
git.exe rm -rf --chached "path/to/file"

# Configure local repo branch type globally (git config settins)
git.exe config --global init.defaultBranch main

# track remote repo branch
git.exe branch --track origin/main main