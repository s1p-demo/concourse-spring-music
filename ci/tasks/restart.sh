#!/usr/bin/env bash
set -e

#exec 3>&1 # make stdout available as fd 3 for the result
#exec 1>&2 # redirect all output to stderr for logging

# load_pubkey() {
  mkdir ~/.ssh
  # touch ~/.ssh/known_hosts
  # ssh-keyscan -H github.com >> ~/.ssh/known_hosts

  # echo $SSH_KEY > ~/.ssh/id_rsa
  # chmod 600 ~/.ssh/id_rsa
  # eval `ssh-agent -s`

  # openssl rsa -in ~/.ssh/id_rsa -out ~/.ssh/id_rsa
  # eval $(ssh-agent) >/dev/null 2>&1
  # trap "kill $SSH_AGENT_PID" 0
  # DISPLAY= ssh-add ~/.ssh/id_rsa >/dev/null
  # DISPLAY= ssh-add -k ~/.ssh/id_rsa </dev/null &>/dev/null
  # echo "\r" | ssh-add ~/.ssh/id_rsa
#   cat > ~/.ssh/config <<EOF
# StrictHostKeyChecking no
# LogLevel quiet
# EOF
#   chmod 0600 ~/.ssh/config

  # echo "PPPPPAAAASSSWORD"
  # ssh-add ~/.ssh/id_rsa

# }
# load_pubkey
#  cat > ~/.netrc <<EOF
# machine github.com login $username password $password
# EOF
echo $GIT_REPO
git clone https://$username:$password@github.com/s1p-demo/concourse-spring-music.git

ls
cd concourse-spring-music
cd bin

# ls blue-green
# ls blue-green-output
git config --global user.email "bbyers@pivotal.io"
git config --global user.name "Concourse"
git config --global push.default matching

./makeItBlue.sh
# cp src/main/webapp/assets/css/blue-app.css src/main/webapp/assets/css/app.css
# git add src/main/webapp/assets/css/app.css
git status
