#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)/TerraformIAM

aws cloudformation delete-stack \
    --stack-name terraform-service-iam \
