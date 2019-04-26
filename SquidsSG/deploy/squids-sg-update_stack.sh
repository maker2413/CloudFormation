#!/bin/sh -x
aws cloudformation update-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-sg-self-delete \
    --template-body file://squids-sg.json \
    --parameters file://config/squids-vpc-sg-param.json \
    --tags Key=Project,Value=Squids
