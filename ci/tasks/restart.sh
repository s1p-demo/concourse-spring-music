#!/usr/bin/env bash
set -e

git clone https://$password@github.com/s1p-demo/concourse-spring-music.git

color=`cat blue-green-file/color-1.0.0`
echo $color

# make it colorful!
cd concourse-spring-music
cd bin

git config --global user.email "bbyers@pivotal.io"
git config --global user.name "Concourse"
git config --global push.default matching

echo $color
if [ "$color" == "blue" ]; then
  ./makeItGreen.sh
  echo "green" > ../../blue-green-output/color-1.0.0
else
  ./makeItBlue.sh
  echo "blue" > ../../blue-green-output/color-1.0.0
fi
