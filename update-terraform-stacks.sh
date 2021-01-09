#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)

echo 'Updating the IAM Stack'
aws cloudformation update-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name terraform-service-iam \
    --template-body file://$WorkDir/TerraformIAM/iam.yml \
    --tags Key=Project,Value=Squids

echo 'Waiting for the IAM Stack Update to complete'
aws cloudformation wait stack-update-complete \
    --stack-name terraform-service-iam

echo 'Updating the S3 Stack'
aws cloudformation update-stack \
    --stack-name terraform-service-s3 \
    --template-body file://$WorkDir/TerraformS3/s3.yml \
    --timeout-in-minutes 15 \
    --tags Key=Project,Value=Squids

echo 'Waiting for the S3 Stack Update to Complete'
aws cloudformation wait stack-update-complete \
    --stack-name terraform-service-s3
