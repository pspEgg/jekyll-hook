#!/bin/bash
set -e

# This script is meant to be run automatically
# as part of the jekyll-hook application.
# https://github.com/developmentseed/jekyll-hook

repo=$1
branch=$2
owner=$3
giturl=$4
source=$5
build=$6

# Set the path of the hosted site
site="/sites/gh/$repo"

# Remove old site files, move new ones in place
rm -rf $site
mv $build $site
