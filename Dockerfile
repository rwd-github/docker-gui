FROM rwd1/ubuntu-systemd:latest as sysbase
MAINTAINER RWd <rwd-github@gmx.net>

RUN apt-get update && apt-get upgrade -y \
	&& apt-get install -y \
	tmux \
	aptitude \
	nano \
	mc \
	dnsutils \
	net-tools \
	less \
	rsync \
	sudo \
	firefox \
	xfce4 \
	xfce4-goodies \
	xfce4-terminal \
	xfwm4-themes \
	shiki-colors-xfwm-theme \
	keepassx \
	firefox \
	firefox-locale-de \
	firefox-locale-en \
	chromium-browser \
	evolution \
	libreoffice \
	libreoffice-l10n-de \
	hunspell-de-de \
	evince \
	geany \
	geany-plugins \
	ecryptfs-utils \
	xrdp \
	xorgxrdp \
	gimp \
	gimp-help-de \
	zenity \
	vlc \
	rapidsvn \
	doublecmd-qt \
	x2goclient \
	fonts-hack-ttf

#	system-config-printer \

VOLUME [ "/sys/fs/cgroup", "/home" ]
EXPOSE 3389/tcp
	
FROM sysbase
ADD createuser.sh /etc/rc.local
RUN chmod +x /etc/rc.local
