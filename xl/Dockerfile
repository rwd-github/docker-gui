FROM rwd1/gui-l:latest

RUN apt-get update && apt-get upgrade -y -q \
	&& apt-get install -y -q \
	subversion \
	evolution \
	libreoffice \
	libreoffice-l10n-de \
	hunspell-de-de \
	gimp \
	gimp-help-de \
	zenity \
	rapidsvn \
	doublecmd-qt \
	x2goclient \
	gnome-mahjongg \
	gnome-mines \
	unattended-upgrades \
	&& apt-get clean

RUN sed -i 's/\/\/\t\(...distro_id\)/\1/g' /etc/apt/apt.conf.d/50unattended-upgrades

#COPY xl/supervisord.conf.part /root/supervisord.conf.part
#RUN cat /root/supervisord.conf.part >> /etc/supervisor/conf.d/supervisord.conf

ADD https://go.microsoft.com/fwlink/?LinkID=760868 /root/code.deb
RUN dpkg -i /root/code.deb
