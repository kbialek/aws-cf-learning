#!/usr/bin/env bash
set -o allexport; source .env; set +o allexport
set -euf -o pipefail

mkdir -p "$BUILD_DIR/out"
cp -r "$APP_DIR/." "$BUILD_DIR/out"
sed -i s~APP_VERSION~$APPLICATION_VERSION~ "$BUILD_DIR/out/index.html"
