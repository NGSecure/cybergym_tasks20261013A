#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 093d296b addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
KD88PXxkPGcoPzxFPi4pPEU+RTxFKD88RT4uKWQ8Zyg/PEU+Lik8RT5FPEUoPzxFPi4pQG1tXEs8KD88RT4uKWQ8Zyg/PEU+Lik8RT5FPEUoPzxFPi4pQG1FXGs8RT5FPjxFPil/KD88PXxkPGdFKD88RT4uKWQ8Zyg/PEU+Lik8RT5FPEUoPzxFPi4pQG1tXEs8KD88RT4uKWQ8Zyg/PEU+Lik8RT5FPEUoPzxFPi4pQG1FXGs8RT5FPjxFPil/
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
