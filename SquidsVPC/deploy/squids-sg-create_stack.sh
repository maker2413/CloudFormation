#!/bin/sh -x
aws cloudformation create-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-sg-self-delete \
    --template-body file://squids-sg.json \
    --timeout-in-minutes 30 \
    --tags Key=Project,Value=Squids
