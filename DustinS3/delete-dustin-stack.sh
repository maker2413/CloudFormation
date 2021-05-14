#!/bin/bash -x
WorkDir=$(git rev-parse --show-toplevel)/DustinS3

echo 'Deleting S3 Stack'
aws cloudformation delete-stack \
    --stack-name dustin-s3 \
