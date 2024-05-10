#!/bin/bash
set -e
echo "Starting LFS fetch script"

# Replace the SSH URL with HTTPS URL
GIT_REPO_URL="https://${GITHUB_TOKEN}@github.com/LouCapener/Vercel_map.git"
echo "Cloning repository using HTTPS URL: $GIT_REPO_URL"

git clone $GIT_REPO_URL repo
cd repo

echo "Git LFS install"
git lfs install

echo "Fetching LFS objects"
git lfs fetch || { echo 'Failed to fetch LFS objects'; exit 1; }

echo "Checking out LFS objects"
git lfs checkout || { echo 'Failed to checkout LFS objects'; exit 1; }

echo "LFS fetch and checkout completed"
