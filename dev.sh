#!/bin/bash
set -o errexit -o pipefail -o nounset

mypath=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

imagetag=gui
stdparams=""
additionalparams="--privileged"

function build {
	docker build ${stdparams} -t ${imagetag} ${mypath}
}

function run {
	docker run -it --rm ${stdparams} \
	-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
	-e myuser=testuser -e mypass=PASSWORD \
	-p 33890:3389 \
	--name ${imagetag} --hostname ${imagetag} ${additionalparams} ${imagetag} 
}


case $1 in
	b)
	echo "build"
	build
	;;
	r)
	echo "run"
	run
	;;
	br)
	build && run
	;;
	bash)
	additionalparams="--entrypoint /bin/bash"
	run
	;;
	*)
	echo "unbekanntes Kommando: $1"
	;;
esac



