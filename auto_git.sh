#!/bin/bash
RED='\033[0;31m'

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
 git commit -m "$(git config user.name) at $(date)" && yes | git push && echo -e "${RED}Changes pushed at $(date)" 
#  fi
 sleep 30
done
