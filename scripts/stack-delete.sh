#!/usr/bin/env bash
set -o allexport; source .env; set +o allexport
set -uf -o pipefail

aws s3 rm --recursive s3://$DEPLOYMENT_BUCKET
aws cloudformation delete-stack --stack-name "$STACK_NAME"
