#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit b78a613f addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
cGF0aCB7dP8gMzMxIDP/MTAzOQp2aWV3Ym94IDktMSAxMf8zIP8gM/8gOSAg/zMgIP8zIP8gMCD/IDE=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
