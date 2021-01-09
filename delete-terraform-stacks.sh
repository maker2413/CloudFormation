#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)

echo 'Deleting the S3 Stack...'
aws cloudformation delete-stack \
    --stack-name terraform-service-s3

echo 'Waiting for the S3 Stack to Delete'
aws cloudformation wait stack-delete-complete \
    --stack-name terraform-service-s3

echo 'Deleting the IAM Stack'
aws cloudformation delete-stack \
    --stack-name terraform-service-iam

echo 'Waiting for the IAM Stack to Delete'
aws cloudformation wait stack-delete-complete \
    --stack-name terraform-service-iam
