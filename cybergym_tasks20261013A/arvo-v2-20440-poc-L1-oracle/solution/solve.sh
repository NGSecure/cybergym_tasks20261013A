#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 9d1f28c1 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
l0pCMg0KGgoBAAAAAwAAAAAAAQAAAAAYAAEAAAABAAAAAenL9AAmrwS/8Hgv4ABAAAAAATAAAQAAABMAAABAAAAANQAAAAAAAPvLK/+sAAAADBABAgAAABwGBAQAAGsAAABAbZmnqkl98uVIBY1uWhJAhf+sAAAACycAAgAAACMAAAA1AAAALAAAAAQAAAALAAhD//3/Av7+/gTu7Yf7yysAAAAAIwABAAAAAenL9AAmrwS/v/B4L+AAQDAAAAD/rAAAAA==
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
