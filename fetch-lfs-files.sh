#!/bin/bash

# Exit on error
set -e

# Fetch LFS files
git lfs fetch
git lfs checkout