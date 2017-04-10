FROM resin/rpi-raspbian
RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get -y install build-essential autoconf automake libtool pkg-config libcurl3-dev libudev-dev libncurses5-dev screen
RUN apt-get -y install wget
WORKDIR /cgminer
RUN wget http://ck.kolivas.org/apps/cgminer/4.9/cgminer-4.9.2.tar.bz2

RUN tar -xvjpf cgminer-4.9.2.tar.bz2

WORKDIR /cgminer/cgminer-4.9.2
RUN ./configure --enable-icarus

RUN apt-get -y install make
RUN apt-get -y install curl


RUN make

ADD ./run.sh ./run.sh

RUN chmod +x ./run.sh
ENV $USER Negash.helper
ENV $PASS 0
ENV $URL stratum+tcp://stratum.slushpool.com:3333
ENTRYPOINT ["bash"]
CMD ["/cgminer/cgminer-4.9.2/run.sh"]
