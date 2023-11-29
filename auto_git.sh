#!/bin/bash

echo "Provide full git repo directory location:"
read repo_location
cd "$repo_location"

while true
do
   git add .
   git commit -m "$(git config user.name) at $(date)"
   git push
   sleep 180
done

