#!/usr/bin/env bash
set -e

mkdir ~/.ssh
touch ~/.ssh/known_hosts
ssh-keyscan -H github.com >> ~/.ssh/known_hosts

echo $SSH_KEY > ~/.ssh/id_rsa
cat ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa
git clone $GIT_REPO
# ls
cd concourse-spring-music
cd bin
# ls blue-green
# ls blue-green-output
git config --global user.email "bbyers@pivotal.io"
git config --global user.name "Concourse"
git config --global push.default matching

cd concourse-spring-music/bin
# ./makeItBlue.sh
cp src/main/webapp/assets/css/blue-app.css src/main/webapp/assets/css/app.css
git add src/main/webapp/assets/css/app.css
