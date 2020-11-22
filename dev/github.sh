#!/bin/bash
# this script authorizes this container to push to github
echo "Input your Github username"
read $GITHUB_USERNAME
git config --global github.username $GITHUB_USERNAME

echo "Input your Github token"
read $GITHUB_TOKEN
git config --global github.token $GITHUB_TOKEN

echo "Input your Github email"
read $GITHUB_EMAIL
git config --global github.email $GITHUB_EMAIL
