FROM rwd1/ubuntu-systemd:latest
MAINTAINER RWd <rwd-github@gmx.net>

ADD myinit.sh /
RUN chmod +x /myinit.sh
CMD ["/myinit.sh"]

RUN apt-get update && apt-get upgrade -y \
	&& apt-get install -y tmux aptitude nano mc firefox less \
 rsync \
 dnsutils \
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
 system-config-printer \
 gimp \
 gimp-help-de \
 zenity \
 vlc \
 rapidsvn \
 doublecmd-qt \
 x2goclient \
 fonts-hack-ttf #\
#	&& apt-get clean \
#    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
	
