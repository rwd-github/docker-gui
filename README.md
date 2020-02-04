# docker-gui

under progress  

docker run -it --rm \
	-v ${mypath}/home:/home \
	-p 33890:3389 \
	rwd1/gui


mount dir with one or more homefolder. Create a file ".mypass" with prehashed password. mkpasswd -m sha-512

to start chromium in gui-session, set an alias in .bashrc  

alias chromium-browser='chromium-browser --no-sandbox'  
