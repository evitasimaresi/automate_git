#!/bin/bash

# Navigate to directory.
cd "$1"

while true
do
# git add -N .
#  if git diff --quiet
#  then
#  echo "No changes to commit"
#  else
 git add .
 git commit -m "$(git config user.name) at $(date)" && yes | git push && echo "\033[1;31mChanges pushed at $(date)\033[1;31m" 
#  fi
 sleep 30
done
