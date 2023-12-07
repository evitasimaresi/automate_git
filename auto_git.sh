#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

# Navigate to directory.
cd "$1"


while true
do
 git add .
 git commit -m "$(git config user.name) at $(date)" && yes | git push && echo -e "${RED}Changes pushed at $(date).${NC}"
 sleep 180
done
