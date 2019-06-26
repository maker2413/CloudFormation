#!/bin/sh -x
WorkDir=$(git rev-parse --show-toplevel)/SquidsVPO

aws cloudformation create-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-vpc-self-delete \
    --template-body file://$WorkDir/squids-vpc.json \
    --parameters file://$WorkDir/config/squids-vpc-param.json \
    --timeout-in-minutes 30 \
    --region us-west-2 \
    --tags Key=Project,Value=Squids
