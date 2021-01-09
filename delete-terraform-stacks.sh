#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)

aws cloudformation wait delete-stack \
    --stack-name terraform-service-s3 \

aws cloudformation wait delete-stack \
    --stack-name terraform-service-iam \
