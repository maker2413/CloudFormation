#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)/TerraformS3

echo 'Deleting S3 Stack'
aws cloudformation delete-stack \
    --stack-name terraform-service-s3 \
