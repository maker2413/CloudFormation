#!/bin/sh -x
WorkDir=$(git rev-parse --show-toplevel)/SquidsS3

aws cloudformation update-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name $1-s3-self-delete \
    --template-body file://$WorkDir/$1-s3.json \
    --parameters file://$WorkDir/config/s3-param.json \
    --region us-west-2 \ 
    --tags Key=Project,Value=Squids
