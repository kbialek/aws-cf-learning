#!/usr/bin/env bash
set -euf -o pipefail
set -o allexport; source .env; set +o allexport

rm -rf -- "$BUILD_DIR"
