#!/bin/bash

# Exit on error
set -e
git config --global url."https://${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}@github.com/".insteadOf "https://github.com/"
# Fetch LFS files
git lfs install
git lfs fetch
git lfs checkout