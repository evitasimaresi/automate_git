echo "Provide full git repo directory location:"
read repo_location
cd "$repo_location"
git add .
git commit -m "$(git config user.name) at $(date)"
git push
