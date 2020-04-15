FROM rwd1/gui:latest

RUN apt-get update && apt-get upgrade -y -q \
	&& apt-get install -y -q \
	openssh-server \
	git git-gui \
	keepassx \
	evince \
	vlc \
	geany \
	geany-plugins \
	ecryptfs-utils \
	&& apt-get clean

EXPOSE 22/tcp
