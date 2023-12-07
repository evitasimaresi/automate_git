#!/bin/bash
Cyan='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Navigate to directory.
cd "$1"


while true
do
current_time=$(date +'%H:%M:%S')
 git add .
 var=$(git commit -m "$(git config user.name) at $(date)")
 if [ $? -eq 0 ]; then
    echo "$var"
    yes | git push
    echo -e "${Cyan}${current_time} Changes pushed.${NC}"
else
    echo -e "${RED}${current_time} No changes.${NC}"
fi
 sleep 180
done
