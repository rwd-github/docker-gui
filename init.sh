#!/bin/bash
rm /etc/rc5.d/*supervisor
set -o errexit -o pipefail -o nounset

cd /root
if [ -f "createuser.sh" ]; then
	./createuser.sh
fi

rm /var/run/xrdp/*.pid || true

# Start all
run-parts -a start /etc/rc5.d

# Stop script
stop_script() {
	run-parts -a stop /etc/rc5.d
    exit 0
}
# Wait for supervisor to stop script
trap stop_script SIGINT SIGTERM

rm /usr/bin/chromium-browser
cp /usr/bin/chromium-browser--no-sandbox /usr/bin/chromium-browser

while true
do
    uptime
    sleep 600
done
