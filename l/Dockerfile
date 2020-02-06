FROM rwd1/gui:latest

RUN apt-get update && apt-get upgrade -y \
	&& apt-get install -y \
	rsync \
	openssh-server \
	git git-gui \
	keepassx \
	evince \
	geany \
	geany-plugins \
	ecryptfs-utils

EXPOSE 22/tcp
