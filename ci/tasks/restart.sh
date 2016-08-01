#!/usr/bin/env bash
set -e

# git clone $GIT_REPO
# ls
cd git-repo
cd bin
git config --global user.email "bbyers@pivotal.io"
git config --global user.name "Concourse"
git config --global push.default matching

./makeItGreen.sh
# ls blue-green
# ls blue-green-output
