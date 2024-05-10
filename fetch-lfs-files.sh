#!/bin/bash

# Exit on error
set -e

# Fetch LFS files
git lfs install
git lfs fetch
git lfs checkout