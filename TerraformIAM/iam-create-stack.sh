#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)/TerraformIAM

aws cloudformation create-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name terraform-iam \
    --template-body file://$WorkDir/iam.yml \
    --timeout-in-minutes 15 \
    --tags Key=Project,Value=Squids
