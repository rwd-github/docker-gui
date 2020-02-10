FROM rwd1/gui:latest

RUN apt-get install -y \
	rsync \
	openssh-server \
	git git-gui \
	keepassx \
	evince \
	geany \
	geany-plugins \
	ecryptfs-utils \
	&& apt-get clean

EXPOSE 22/tcp
