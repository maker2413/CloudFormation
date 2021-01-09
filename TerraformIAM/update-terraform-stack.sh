#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)/TerraformIAM

aws cloudformation update-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name terraform-service-iam \
    --template-body file://$WorkDir/iam.yml \
    --tags Key=Project,Value=Squids
