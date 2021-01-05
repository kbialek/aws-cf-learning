#!/usr/bin/env bash
set -o allexport; source .env; set +o allexport
set -euf -o pipefail

aws cloudformation deploy \
  --stack-name "$STACK_NAME" \
  --template-file app.yaml \
  --capabilities CAPABILITY_IAM \
  --parameter-override \
  ApplicationArtifact="$APP_ARTIFACT" \
  CurrentTimestamp="$(date -uIs)"
