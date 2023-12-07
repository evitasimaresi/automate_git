#!/bin/bash

# Navigate to directory
cd "$1"

while true
do
 git add .

 if git diff --quiet
 then
 echo "No changes to commit"
 else
 git commit -m "$(git config user.name) at $(date)" && yes | git push
 fi
#  echo -ne '\n' | read
 sleep 30
done
