#!/usr/bin/env bash
set -e

git clone https://$password@github.com/s1p-demo/concourse-spring-music.git

cd concourse-spring-music
cd bin

git config --global user.email "bbyers@pivotal.io"
git config --global user.name "Concourse"
git config --global push.default matching

color=`cat blue-green-file\color-1.0.0`
echo $color
# ./makeItBlue.sh

cd ../../
echo "green" > blue-green-output/color-1.0.0
ls blue-green-output
