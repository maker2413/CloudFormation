#!/bin/sh -x
WorkDir=$(git rev-parse --show-toplevel)/SquidsIAM

aws cloudformation create-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-iam-self-delete \
    --template-body file://$WorkDir/squids-iam.json \
    --parameters file://$WorkDir/config/squids-iam-param.json \
    --timeout-in-minutes 30 \
    --region us-west-2 \
    --tags Key=Project,Value=Squids
