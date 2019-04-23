#!/bin/sh -x
aws cloudformation create-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-iam-self-delete \
    --template-body file://squids-iam.json \
    --timeout-in-minutes 30 \
    --tags Key=Project,Value=Squids
