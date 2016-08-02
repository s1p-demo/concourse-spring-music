#!/usr/bin/env bash
set -e

# version=`cat version/number`
git clone https://$PASSWORD@github.com/s1p-demo/concourse-spring-music.git



# aws s3 get $S3_BUCKET/$S3_BLUE_GREEN_FILE
aws s3 cp s3://$S3_BUCKET/$S3_BLUE_GREEN_FILE color

color=`cat blue-green-file/color*`

mkdir ~/.aws
cat > ~/.aws/credentials <<EOF
aws_access_key_id=$S3_ACCESS_KEY_ID
aws_secret_access_key=$S3_SECRET_ACCESS_KEY
EOF

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
  echo "green" > ../../color
else
  echo "turning banner blue"
  ./makeItBlue.sh
  echo "blue" > ../../color
fi

aws s3 cp color s3://$S3_BUCKET/$S3_BLUE_GREEN_FILE
