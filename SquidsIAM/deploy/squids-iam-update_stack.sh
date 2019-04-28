#!/bin/sh -x
WorkDir=$(git rev-parse --show-toplevel)/SquidsIAM

aws cloudformation update-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-iam-self-delete \
    --template-body file://$WorkDir/squids-iam.json \
    --parameters file://$WordDir/config/squids-iam-param.json \
    --tags Key=Project,Value=Squids
