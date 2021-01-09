#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)/TerraformIAM

echo 'Deleting IAM Stack'
aws cloudformation delete-stack \
    --stack-name terraform-service-iam \
