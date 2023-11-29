#!/bin/bash

repo_location=$1
cd "$repo_location"

while true
do
 git add .
 git commit -m "$(git config user.name) at $(date)"
 yes | git push
 sleep 180
done
