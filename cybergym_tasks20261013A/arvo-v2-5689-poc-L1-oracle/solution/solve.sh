#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 7e43b65c addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
OEJQUwABICAgICAgAAAAAAAgAAAAIAAgICAAAAAAAAAA/DhiSU0gICAgAAAAf/8gICAgIP8gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICD///8gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOEJJTQPtICAAAACAICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICD///8gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAAAAAA=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
