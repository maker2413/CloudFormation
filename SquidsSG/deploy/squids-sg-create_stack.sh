#!/bin/sh -x
WorkDir=$(git rev-parse --show-toplevel)/SquidsSG

aws cloudformation create-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-sg-self-delete \
    --template-body file://$WorkDir/squids-sg.json \
    --parameters file://$WorkDir/config/squids-vpc-sg-param.json \
    --timeout-in-minutes 30 \
    --region us-west-2 \
    --tags Key=Project,Value=Squids
