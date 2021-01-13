FROM python

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&\
    apt-get install -y \
    wget nano htop \
    build-essential \
    gdb

RUN apt-get update &&\
    apt-get install -y cython3 &&\
    pip install cmake