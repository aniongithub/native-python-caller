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

# Install Python3, pip3 and make them default
# RUN apt-get update &&\
#     apt-get install -y \
#         curl python3.8 python3.8-dev python3-distutils &&\
#     ln -sfn $(which python3.8) /usr/local/bin/python &&\
#     ln -sfn $(which python3.8) /usr/local/bin/python3 &&\
#     curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py &&\
#     python3 /tmp/get-pip.py &&\
#     ln -sfn $(which pip3) /usr/local/bin/pip

# RUN apt-get update &&\
#     apt-get install -y cython3