FROM phusion/baseimage:latest
MAINTAINER Amar Sood (mail@tekacs.com)

RUN apt-get update && apt-get install -y python2.7

VOLUME /home

RUN useradd -mG sudo -d /home data
RUN echo 'root:linux' | chpasswd
USER data

WORKDIR /home
ADD http://pigshell.com/v/0.6.2/psty.py /home/psty.py

EXPOSE 50937

ENTRYPOINT ["python2.7", "/home/psty.py", "-a", "-d", "/home"]
