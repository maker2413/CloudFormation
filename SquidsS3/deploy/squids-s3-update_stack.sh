#!/bin/sh -x
WorkDir=$(git rev-parse --show-toplevel)/SquidsS3

aws cloudformation update-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-s3-self-delete \
    --template-body file://$WorkDir/squids-s3.json \
    --parameters file://$WorkDir/config/squids-s3-param.json \
    --tags Key=Project,Value=Squids
