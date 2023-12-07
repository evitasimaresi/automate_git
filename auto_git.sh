#!/bin/bash

# Navigate to directory
cd "$1"

while true
do
 if git diff --quiet
 then
 echo "No changes to commit"
 else
 git add .
 git commit -m "$(git config user.name) at $(date)"
 yes | git push
 fi
 echo -ne '\n' | read
 sleep 180
done
