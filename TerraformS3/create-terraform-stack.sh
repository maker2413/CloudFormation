#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)/TerraformS3

echo 'Creating S3 Stack'
aws cloudformation create-stack \
    --stack-name terraform-service-s3 \
    --template-body file://$WorkDir/s3.yml \
    --timeout-in-minutes 15 \
    --tags Key=Project,Value=Squids
