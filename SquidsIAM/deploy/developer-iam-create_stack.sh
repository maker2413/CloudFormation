#!/bin/sh -x
aws cloudformation create-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name developer-iam-self-delete \
    --template-body file://developer-iam.json \
    --timeout-in-minutes 30 \
    --tags Key=Project,Value=Squids
