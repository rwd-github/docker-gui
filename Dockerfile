FROM ubuntu:18.04 as sysbase
MAINTAINER RWd <rwd-github@gmx.net>

# Set the locale
RUN apt update \
	&& apt upgrade -y \
	&& apt install -y locales \
	&& locale-gen de_DE.UTF-8
ENV LANG de_DE.UTF-8
ENV LANGUAGE de_DE:de
ENV LC_ALL de_DE.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y \
	&& apt-get install -y \
	tmux \
	aptitude \
	nano \
	mc \
	dnsutils \
	net-tools \
	less \
	sudo \
	htop \
	supervisor \
	xfce4 \
	xfce4-goodies \
	xfce4-terminal \
	xfwm4-themes \
	shiki-colors-xfwm-theme \
	xrdp \
	xorgxrdp \
	firefox \
	firefox-locale-de \
	firefox-locale-en \
	fonts-hack-ttf

RUN unlink /etc/localtime \
	&& ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime

VOLUME [ "/home" ]
EXPOSE 3389/tcp

RUN mkdir -p /var/log/supervisor
RUN mkdir -p /etc/supervisor/conf.d/
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]


FROM sysbase
ADD createuser.sh /etc/rc.local
RUN chmod +x /etc/rc.local

