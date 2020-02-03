# docker-gui

under progress  

docker run -it --rm --privileged \
	-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
	-v ${mypath}/home:/home \
	-p 33890:3389 \
	rwd1/gui


mount dir with one or more homefolder. Create a file ".mypass" with prehashed password. mkpasswd -m sha-512

