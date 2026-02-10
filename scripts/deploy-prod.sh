#!/usr/bin/env bash
set -euo pipefail

echo "LEGACY DEPLOY SCRIPT - use only for the audit demo"
echo "Target: ${MANUAL_DEPLOY_TARGET:-prod-web-01}"
echo "This script intentionally documents the old manual process."

npm --prefix services/api test
npm --prefix apps/web run build

echo "TODO: rsync dist to server"
echo "TODO: restart loue-api with systemctl"
echo "TODO: smoke test /health"
