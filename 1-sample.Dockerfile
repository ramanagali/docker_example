FROM ubuntu:20.04

RUN apt update && apt -y install curl

RUN apt -y install iputils-ping 

EXPOSE 4000