#!/bin/sh -x
WorkDir=$(git rev-parse --show-toplevel)/SquidsSG

aws cloudformation update-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-sg-self-delete \
    --template-body file://$WorkDir/squids-sg.json \
    --parameters file://$WorkDir/config/squids-vpc-sg-param.json \
    --tags Key=Project,Value=Squids
