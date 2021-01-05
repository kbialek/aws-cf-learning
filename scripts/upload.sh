#!/usr/bin/env bash
set -euf -o pipefail
set -o allexport; source .env; set +o allexport

aws s3 cp "$BUILD_DIR/$APP_ARTIFACT" "s3://$DEPLOYMENT_BUCKET"
