#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 093d296b addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
KD88PUR8KSg/PD1AIW5ubm5ubm5ubklJSUluO3sxfUQ/KCl8PHhAeCp4eHhEfCkoPzw9QHh4eHx4eHh4eFxnPDE+O3sxfXgp
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
