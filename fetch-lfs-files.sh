#!/bin/bash
set -e
echo "Starting LFS fetch script"
echo "Configuring Git to use HTTPS for LFS operations"
git config --global url."https://${GITHUB_TOKEN}@github.com/".insteadOf "ssh://git@github.com/"
git config --global url."https://${GITHUB_TOKEN}@github.com/".insteadOf "https://github.com/"
echo "Git LFS install"
git lfs install
echo "Fetching LFS objects"
git lfs fetch || { echo 'Failed to fetch LFS objects'; exit 1; }
echo "Checking out LFS objects"
git lfs checkout || { echo 'Failed to checkout LFS objects'; exit 1; }
echo "LFS fetch and checkout completed"
