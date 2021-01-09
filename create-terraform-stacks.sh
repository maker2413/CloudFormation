#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)

aws cloudformation wait create-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name terraform-service-iam \
    --template-body file://$WorkDir/TerraformIAM/iam.yml \
    --timeout-in-minutes 15 \
    --tags Key=Project,Value=Squids

aws cloudformation wait create-stack \
    --stack-name terraform-service-s3 \
    --template-body file://$WorkDir/TerraformS3/s3.yml \
    --timeout-in-minutes 15 \
    --tags Key=Project,Value=Squids
