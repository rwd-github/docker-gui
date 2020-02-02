FROM rwd1/ubuntu-systemd:latest
MAINTAINER RWd <rwd-github@gmx.net>

ADD myinit.sh /
RUN chmod +x /myinit.sh
CMD ["/myinit.sh"]

RUN apt update && apt upgrade -y \
	&& apt install -y xfce4 tmux xrdp aptitude nano mc firefox xfce4-terminal less \
	&& apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
	
