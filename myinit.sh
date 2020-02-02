#!/bin/bash



adduser --disabled-password --gecos "" ${myuser} 
echo ${myuser}:${mypass} | chpasswd


/lib/systemd/systemd
