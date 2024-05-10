#!/bin/bash

# Exit on error
set -e
git config --global url."https://${GITHUB_TOKEN}@github.com/".insteadOf "https://github.com/"
# Fetch LFS files
git lfs install
git lfs fetch
git lfs checkout