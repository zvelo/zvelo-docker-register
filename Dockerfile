FROM ubuntu:14.04
MAINTAINER Joshua Rubin jrubin@zvelo.com

RUN apt-get update && apt-get install -y wget python python-pip python-dev libssl-dev libffi-dev

RUN mkdir /app
WORKDIR /app

RUN pip install python-etcd

ENV DOCKERGEN_VER 0.3.3
ENV INTVAL 10

RUN wget https://github.com/jwilder/docker-gen/releases/download/$DOCKERGEN_VER/docker-gen-linux-amd64-$DOCKERGEN_VER.tar.gz
RUN tar xvzf docker-gen-linux-amd64-$DOCKERGEN_VER.tar.gz -C /usr/local/bin

ADD . /app

ENV DOCKER_HOST unix:///var/run/docker.sock

CMD docker-gen -interval $INTVAL -watch -notify "python /tmp/register.py" etcd.tmpl /tmp/register.py
