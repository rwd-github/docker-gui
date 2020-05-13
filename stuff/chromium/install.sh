#!/bin/bash
set -o errexit -o pipefail -o nounset

mypath=$(dirname $0)


cp ${mypath}/debian.list /etc/apt/sources.list.d/debian.list
cp ${mypath}/chromium.pref /etc/apt/preferences.d/chromium.pref

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys DCC9EFBF77E11517
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AA8E81B4331F7F50
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A

apt-get update
apt-get install -y chromium
