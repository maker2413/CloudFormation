#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)/TerraformS3

aws cloudformation delete-stack \
    --stack-name terraform-service-s3 \
