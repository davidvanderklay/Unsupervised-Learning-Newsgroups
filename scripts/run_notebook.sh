#!/usr/bin/env bash
set -euo pipefail

NOTEBOOK_INPUT="${1:-133005021_final_checkpoint.ipynb}"
NOTEBOOK_OUTPUT="${2:-133005021_final_checkpoint.ran.ipynb}"

if ! command -v jupyter >/dev/null 2>&1; then
  echo "jupyter not found in PATH. Activate the environment first (direnv allow)." >&2
  exit 1
fi

jupyter nbconvert \
  --to notebook \
  --execute "$NOTEBOOK_INPUT" \
  --output "$NOTEBOOK_OUTPUT" \
  --ExecutePreprocessor.timeout=1800 \
  --ExecutePreprocessor.kernel_name=python3

echo "Executed notebook written to: $NOTEBOOK_OUTPUT"
