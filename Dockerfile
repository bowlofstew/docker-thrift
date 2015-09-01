FROM bowlofstew/modern-cpp:0.0.3
MAINTAINER Stewart Henderson<henderson.geoffrey@gmail.com>
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install curl
RUN apt-get -y install ruby ruby-dev
RUN apt-get -y install python python-dev
RUN apt-get -y install libevent-dev
RUN apt-get -y install automake libtool flex bison pkg-config libssl-dev
RUN git clone https://github.com/apache/thrift.git /tmp/thrift
RUN cd /tmp/thrift && git checkout 0.9.2
RUN cd /tmp/thrift && \
	./bootstrap.sh && \
	./configure && \ 
	make && \
	make install