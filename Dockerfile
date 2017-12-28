FROM node:latest
MAINTAINER Helton Carlos de Souza <helton.development@gmail.com>
RUN apt-get update && \
	apt-get install -y python3

COPY phantomjs-2.1.1-linux-x86_64.tar.bz2 /tmp/
COPY casperjs-casperjs-1.1.0-0-gaf0955c.tar.gz /tmp/
RUN tar -jxvf /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2 -C /usr/local/ && \
    mv /usr/local/phantomjs-2.1.1-linux-x86_64/ /usr/local/phantomjs && \
    export PATH=/usr/local/phantomjs/bin:$PATH && phantomjs --version && \

    tar -zxvf /tmp/casperjs-casperjs-1.1.0-0-gaf0955c.tar.gz -C /usr/local/ && \
    mv /usr/local/casperjs-casperjs-b5c59e1/ /usr/local/casperjs && \
    export PATH=/usr/local/casperjs/bin:$PATH &&  casperjs --version

VOLUME ["/vagrant/casperjs","/casperjs"]
WORKDIR /casperjs

ENV PATH /usr/local/phantomjs/bin:/usr/local/casperjs/bin:$PATH
