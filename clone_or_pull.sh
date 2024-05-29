#!/bin/bash

# Variables
REPO_URL="https://github.com/rakesh-krishnamoorthy/git-actions-repo.git"
CLONE_DIR="/home/ubuntu/my-repo"

# Check if the directory exists
if [ -d "$CLONE_DIR" ]; then
  echo "Directory exists. Pulling latest changes..."
  cd "$CLONE_DIR"
  git pull
else
  echo "Directory does not exist. Cloning the repository..."
  git clone "$REPO_URL" "$CLONE_DIR"
fi
