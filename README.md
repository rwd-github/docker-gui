# docker-gui

under progress  

docker run -it --rm -e myuser=testuser -e mypass=PASSWORD --name gui --privileged -p 3389:3389 -v /sys/fs/cgroup:/sys/fs/cgroup:ro rwd1/gui
