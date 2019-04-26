#!/bin/sh -x
aws cloudformation update-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-iam-self-delete \
    --template-body file://squids-iam.json \
    --tags Key=Project,Value=Squids
