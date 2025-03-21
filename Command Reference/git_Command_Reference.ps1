# Define username
git.exe config --global user.name "Your Name"
# Define user Email
git.exe config --global user.email "you@example.com"
# Define a proxy
git.exe config --global https.proxy "https://IP:port"
git.exe fetch origin
git.exe merge origin/main --allow-unrelated-histories
git.exe branch --set-upstream-to=origin/main main
git.exe remote add origin "path/to/remote/repository"
git.exe branch -d master
git.exe push origin --delete master
git.exe log --oneline
git.exe reset --hard "<commit-hash>"
git.exe pull "<remote>" "<branch>"
git.exe rm "path/to/file"
git.exe config --global init.defaultBranch main
git.exe rm -rf --chached "file"