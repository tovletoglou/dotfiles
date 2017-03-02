#!/bin/bash

# ------------------------------------------------------------------------------
# Migrate any online git repository (from GitLab, Github, etc.) to a new online
# repo.
#
# Tested:
# - linux-gnu (native linux bash)
# - MINGW32 (Windows bash from git-for-windows)
#
# Install:
#   Copy this script under your home directory `~/migrate-git-to-git.sh` and
#   include it in your `.bashrc`:
#
#     if [ -f "$HOME/migrate-git-to-git.sh" ] ; then
#       source "$HOME/migrate-git-to-git.sh"
#     fi
#
# Function:
#   migrate-git-to-git source-repo target-repo temporary-folder
#
# Example:
#   migrate-git-to-git git@github.com:USER_NAME/PROJECT_NAME.git git@github.com:NEW_USER_NAME/NEW_PROJECT_NAME.git
#
# Info:
# - You should create an empty repository on the online platform (GitLab, Github)
#   as the migration target.
# - If you want to use SSH and not HTTPS for the repositories you should setup
#   your SSH key on both remote servers and on your local computer.
#
# ------------------------------------------------------------------------------

function migrate-git-to-git {
  d=${3-'./gitmigrate_tmp'}
  \git clone $1 $d
  \git --git-dir $d/.git branch -a | \sed -n "/\\/HEAD /d; /\\/master$/d; /remotes/p;" | \xargs -L1 git --git-dir $d/.git checkout -t
  \git --git-dir $d/.git pull --all
  \git --git-dir $d/.git remote add newremote $2
  \git --git-dir $d/.git push --all newremote
  \git --git-dir $d/.git push --tags newremote
  \rm -rf $d
}
