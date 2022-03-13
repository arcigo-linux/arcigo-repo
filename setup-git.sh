#!/bin/bash
#set -e
##################################################################################################################
# Author 	: 	Arcigo Linux
# Github 	: 	https://github.com/arcigo-os/
##################################################################################################################

# Problem solving commands

# Read before using it.
# https://www.atlassian.com/git/tutorials/undoing-changes/git-reset
# git reset --hard orgin/master
# ONLY if you are very sure and no coworkers are on your github.

# Command that have helped in the past
# Force git to overwrite local files on pull - no merge
# git fetch all
# git push --set-upstream origin master
# git reset --hard orgin/master


#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config

git config --global pull.rebase false
git config --global push.default simple
git config --global user.name "arcigo-os"
git config --global user.email "arcigo.linux@gmail.com"
sudo git config --system core.editor nano
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=32000'

echo -e "\n==> Github credentials have been set"
echo "==> Delete the ~/.cache/git folder if you made a mistake or"
echo "==> If you want to switch to your personal github"

echo -e "\n==> Finished !\n"
