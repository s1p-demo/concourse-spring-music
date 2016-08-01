#!/usr/bin/env bash
set -e

version=`cat version/number`
git clone https://$password@github.com/s1p-demo/concourse-spring-music.git

color=`cat blue-green-file/color*`

# make it colorful!
cd concourse-spring-music
cd bin

git config --global user.email "bbyers@pivotal.io"
git config --global user.name "Concourse"
git config --global push.default matching

echo "Current color: "$color
if [ "$color" == "blue" ]; then
  echo "turning banner green"
  ./makeItGreen.sh
  echo "green" > ../../blue-green-output/color-$version
else
  echo "turning banner blue"
  ./makeItBlue.sh
  echo "blue" > ../../blue-green-output/color-$version
fi
