#!/bin/sh -x
WorkDir=$(git rev-parse --show-toplevel)/SquidsEFS

aws cloudformation update-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-efs-self-delete \
    --template-body file://$WorkDir/squids-efs.json \
    --parameters file://$WorkDir/config/squids-efs-param.json \
    --tags Key=Project,Value=Squids
