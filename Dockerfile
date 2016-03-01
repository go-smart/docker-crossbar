# With thanks to github.com/vinelab/docker-crossbar and crossbar documentation

# to build this container:
# docker build -t crossbar .
FROM debian:jessie

RUN apt-get update && apt-get -y install build-essential libssl-dev libffi-dev libreadline-dev libbz2-dev libsqlite3-dev libncurses5-dev python3-pip python3-dev
RUN pip3 install autobahn==0.12.1
RUN pip3 install crossbar[all]

WORKDIR /
# This creates the default "hello world" application.
CMD crossbar start --cbdir /.crossbar
