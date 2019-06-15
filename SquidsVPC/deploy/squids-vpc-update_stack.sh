#!/bin/sh -x
WorkDir=$(git rev-parse --show-toplevel)/SquidsVPC

aws cloudformation update-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-vpc-self-delete \
    --template-body file://$WorkDir/squids-vpc.json \
    --parameters file://$WorkDir/config/squids-vpc-param.json \
    --tags Key=Project,Value=Squids
