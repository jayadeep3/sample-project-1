FROM ubuntu
MAINTAINER jayadeep
RUN apt-get update && apt-get upgrade
RUN apt-get install -y openjdk-11-jdk
