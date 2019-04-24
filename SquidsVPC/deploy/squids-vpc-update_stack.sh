#!/bin/sh -x
aws cloudformation update-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-vpc-self-delete \
    --template-body file://squids-vpc.json \
    --parameters file://config/squids-vpc-param.json \
    --timeout-in-minutes 30 \
    --tags Key=Project,Value=Squids
