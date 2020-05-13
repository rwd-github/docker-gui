#!/bin/bash
set -o errexit -o pipefail -o nounset

mypath=$(dirname $0)

orig=chromium

mv /usr/bin/${orig} /usr/bin/chromium-browser.original
cp ${mypath}/chromium-browser /usr/bin/${orig}
chmod +x /usr/bin/${orig}
cp /usr/bin/${orig} /usr/bin/${orig}--no-sandbox
