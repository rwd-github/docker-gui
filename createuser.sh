#!/bin/bash
set -o errexit -o pipefail -o nounset

# die Variablen vom Docker sind in rc.local leider nicht bekannt.

echo "===  createuser start"
for myuser in $(ls /home); do
	echo "---  add user ${myuser}"
	mypass=$(cat /home/${myuser}/.mypass)

	adduser --disabled-password --no-create-home --gecos "" ${myuser}
	#echo ${myuser}:${mypass} | chpasswd
	usermod -p "${mypass}" ${myuser}
	usermod -a -G adm ${myuser}
	usermod -a -G sudo ${myuser}

	cd /home/${myuser}
	chown -R ${myuser}:${myuser} .
	chmod -R go=u,go-w .
	chmod go= .
done
echo "===  createuser stop"

rm $0
