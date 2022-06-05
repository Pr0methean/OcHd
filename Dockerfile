FROM dpokidov/imagemagick:latest-ubuntu
RUN add-apt-repository ppa:inkscape.dev/stable
RUN apt update
RUN apt install inkscape
