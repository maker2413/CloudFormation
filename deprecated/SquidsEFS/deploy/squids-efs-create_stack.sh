#!/bin/sh -x
WorkDir=$(git rev-parse --show-toplevel)/SquidsEFS

aws cloudformation create-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --stack-name squids-efs-self-delete \
    --template-body file://$WorkDir/squids-efs.json \
    --parameters file://$WorkDir/config/squids-efs-param.json \
    --timeout-in-minutes 30 \
    --tags Key=Project,Value=Squids
