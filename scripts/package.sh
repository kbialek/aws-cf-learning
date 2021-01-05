#!/usr/bin/env bash
set -o allexport; source .env; set +o allexport
set -euf -o pipefail

mkdir -p "$BUILD_DIR" && \
cd "$BUILD_DIR/out" && \
zip -q -r "$BUILD_DIR/$APP_ARTIFACT" . && \
cd - &> /dev/null
