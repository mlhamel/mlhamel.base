FROM        ubuntu:14.04

RUN         apt-get update
RUN         apt-get -y upgrade
RUN         apt-get -y install g++ make curl git python3-dev
RUN         export LD_LIBRARY_PATH=/usr/local/lib
RUN         cd /home && curl -O https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py