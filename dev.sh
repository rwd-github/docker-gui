#!/bin/bash
set -o errexit -o pipefail -o nounset

#mypath=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

#docker-compose pull
docker-compose up --build -d

. ./env


while true; do
        ret=0
        xfreerdp /u:${guiuser} /p:${guipass} /f /rfx /sound /v:localhost:33890 || ret=$?
# +clipboard 
        if [ "$ret" -eq "0"  ] ||  [ "$ret" -eq "12"  ]; then break; fi
        sleep 1
done

docker-compose down
