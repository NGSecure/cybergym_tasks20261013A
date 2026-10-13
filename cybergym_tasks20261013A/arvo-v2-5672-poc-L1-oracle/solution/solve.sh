#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 391d3afd addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
q////wD///8ZnKj4PxP//////z4+Pg2AcRU+Pr4+Pj4+Plk+Pj4+Pi7qx/DxpYc2Iz/WgmpyB8sjV95YVa5BYi+fo/S7WX+fTYVe1rL//////wAAAP/0AAAZLP///+7//wArYY3ZVbn4/0AAAABC+Fcptv//sU7nwGWz4S1K4EhvwsSMJgb+jRHFcixuXjmX2ZuLEi8BZjB1JSI7x5bb5vltnGXmPdJLsNxYlFDJDday//////8AAAD/9AAAGSz////u//8AK2GN2VW5+P9AAAAAQvhXKbb//7FO58Bls+EtSuBIb8DEjCYG/o0RxXIsbl45l9mbizMvAWYwdSUiO8eW2+b5bZxl5j3SS7DcWJRE2NqbluQmu/5tzxR/MNLoe7JrL7yOr9/z6QJNCnMt6w7AspdGm2oAFv+an4HfXAJJ5ZK35sIEyIkx5nHHw3BcSW7tDRWQDeFxGmc63WVDnfnPW7cRQ4DscKS1//HAhInvshzQh25Zp1dlefd7vb5AUCbJ3XRv8y0DTenf6w7AZEBCASthjdlVuRiowxdW0nuG1YtN4Nc+Hv7dyktnava8/5ufgYD////+AAAAAAAAAAAAAP///////v/7ABIRAAsAAAAAfwAAAKmcBT8TLurHEA5aeADc4DUAAHIHyyNX3lhVrkGfL6P0YrtAwZ9NhGbWsv///wsAAAAAAAMAAAAHAP///4AA8ALdAAAAAAAAAAABAQAAAAAB/////wAAAAEAAAAEAAAAAAAAAAAAAAADAAAABwAAAAAAAAAC3QAAAAAAAAA7AAAAAAAAAAAAAAAAAAARAQAAAD4+////APTL3EGUUCgAAHTc8aKtyKQgAAIAAFWuQZ8vo/S7WcGfTYT/f7L//////1DWKH8Vqc903KKo8ciuIErgAAAAAAAA/38AKgAAAAAAAAAAAAAAAACaIIHfXAJJ5ZK35sIEyDHmAAAAAFxJbu0NFZD//////////z4+Pg3hcRU+Pj4+Pj4+Pu0NFZAN4XEVZzrdZUOd+c9btxFDKOxwpLX/8cCEie+yHM+TJfP+jQD+bc8Ue9XP8bMR1j/lLHJCFzp1V9ZlGECZRuEfDgAADgAAAACxfGXe8oCQ1AAANiO3fzDS6Huyay+8jq/t8/MtA03pGsCyl0YAK2GN2VW5GKjDACb5ezm3RNjam5bNNrv+bc8UfzDS6Huyay/mwgTIMuYAAAAAXKjDF1bSe8bVi03g1z4e/t3KS2dq9rz/m5+B31wB//cAAAAAAAAAAAAA/////////////xEAAAAAAAAA/9dqqZwFPxMu6scQDlp4ydzANQAAcgfLI1feWFWuQZ8vXcGfTYRm1rL///8LAAAAQwAAAP//ov////8=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
