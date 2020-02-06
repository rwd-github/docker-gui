#!/bin/bash
set -o errexit -o pipefail -o nounset

echo "===  createuser start"
for myuser in $(ls /home); do
	echo "---  add user ${myuser}"
	if [ ! $(id -u ${myuser}) ]; then
		adduser --disabled-password --no-create-home --gecos "" ${myuser}
		pushd /home/${myuser}
		if [ -f .mypass ]; then
			mypass=$(cat .mypass)

			#echo ${myuser}:${mypass} | chpasswd
			usermod -p "${mypass}" ${myuser}
		else
			echo " no password found"
		fi
		usermod -a -G adm ${myuser}
		usermod -a -G sudo ${myuser}

		chown -R ${myuser}:${myuser} .
		chmod -R go=u,go-w .
		chmod go= .
		popd
	else
		echo "  user already exists."
	fi
done
echo "===  createuser stop"

#rm $0
