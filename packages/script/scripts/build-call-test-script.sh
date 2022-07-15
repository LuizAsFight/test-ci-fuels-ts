#!/bin/bash

set -euo pipefail

echo 1;
FUELS_DEBUG=${FUELS_DEBUG:-}
SCRIPT_DIR="src/call-test-script"
BIN_DIR="$SCRIPT_DIR/out/debug"

echo 2;
pnpm forc build -p $SCRIPT_DIR --print-finalized-asm
echo 3;
if [[ -n "$FUELS_DEBUG" ]]; then
echo 4;
  pnpm forc parse-bytecode "$BIN_DIR/call-test-script.bin" > "$BIN_DIR/call-test-script.txt"
  echo 5;
fi
