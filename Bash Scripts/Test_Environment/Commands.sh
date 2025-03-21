# This is a copycat from ./scripts/Command.sh in the remote Test_Environment server

# !/bin/bash

# Obtain key finger print
sudo ssh-keygen -l -f /etc/ssh/ssh_host_rsa_key


# List Files and Directories in the current working directories
ls -1

# Move files from one directory to another
mv /path/to/source/file /path/to/target/directory/

# sudo mv /var/www/html/wp-content/uploads/jobsearch-resumes/675154a621352/ /var/www/html/wp-content/uploads/

# sudo mv /var/www/html/wp-content/uploads/675154a621352 /var/www/html/wp-content/uploads/jobsearch-resumes/