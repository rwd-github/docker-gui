#!/bin/bash
set -o errexit -o pipefail -o nounset

rm /etc/rc5.d/*supervisor

cd /root
if [ -f "createuser.sh" ]; then
	./createuser.sh
fi

# Start all
run-parts -a start /etc/rc5.d

# Stop script
stop_script() {
	run-parts -a stop /etc/rc5.d
    exit 0
}
# Wait for supervisor to stop script
trap stop_script SIGINT SIGTERM

while true
do
    uptime
    sleep 10
done
