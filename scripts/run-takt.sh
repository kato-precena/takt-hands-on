#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

# mise で管理されたツール（node 等）を PATH に追加
eval "$(mise env 2>/dev/null)" || true

exec takt "$@"
