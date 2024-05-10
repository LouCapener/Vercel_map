#!/bin/bash
set -e
echo "Starting LFS fetch script"
git config --global url."https://${GITHUB_TOKEN}@github.com/".insteadOf "https://github.com/"
git lfs install
git lfs fetch || { echo 'Failed to fetch LFS objects'; exit 1; }
git lfs checkout || { echo 'Failed to checkout LFS objects'; exit 1; }
echo "LFS fetch and checkout completed"
