#!/bin/bash
set -e

echo "Creating GitHub repository cg_game and pushing..."
gh repo create cg_game --public --source=. --remote=origin --push
echo "Successfully pushed to https://github.com/$(gh api user -q .login)/cg_game"
