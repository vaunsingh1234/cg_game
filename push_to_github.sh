#!/bin/bash
set -e

REPO_NAME="cg_game"
USERNAME="$(gh api user -q .login)"

if gh repo view "$USERNAME/$REPO_NAME" >/dev/null 2>&1; then
  echo "Repository $USERNAME/$REPO_NAME already exists. Pushing changes..."
  git push -u origin HEAD
else
  echo "Creating GitHub repository $REPO_NAME and pushing..."
  gh repo create "$REPO_NAME" --public --source=. --remote=origin --push
fi

echo "Successfully pushed to https://github.com/$USERNAME/$REPO_NAME"
