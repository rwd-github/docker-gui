FROM rwd1/gui:latest
MAINTAINER RWd <rwd-github@gmx.net>

RUN apt-get update && apt-get upgrade -y \
	&& apt-get install -y \
	rsync \
	openssh-server \
	git git-gui \
	keepassx \
	chromium-browser \
	evince \
	geany \
	geany-plugins \
	ecryptfs-utils

EXPOSE 22/tcp
