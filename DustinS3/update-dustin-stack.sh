#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)/DustinS3

echo 'Updating S3 Stack'
aws cloudformation update-stack \
    --stack-name terraform-service-s3 \
    --template-body file://$WorkDir/s3.yml \
    --tags Key=Project,Value=Squids
