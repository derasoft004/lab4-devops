#!/usr/bin/env bash
set -euo pipefail

cd /opt/lab4-service/html
exec python3 -m http.server 8000
