#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)/DustinS3

echo 'Creating S3 Stack'
aws cloudformation create-stack \
    --stack-name dustin-s3 \
    --template-body file://$WorkDir/s3.yml \
    --timeout-in-minutes 15 \
    --tags Key=Project,Value=Squids
