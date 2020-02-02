#!/bin/bash


myadduser ()
{
	adduser --disabled-password --gecos "" ${myuser} 
	echo ${myuser}:${mypass} | chpasswd
}


myadduser &

/lib/systemd/systemd
