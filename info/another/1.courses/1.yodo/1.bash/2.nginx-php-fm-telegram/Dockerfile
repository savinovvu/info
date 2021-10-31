FROM ubuntu:20.04

RUN apt update && apt upgrade -y && \
    apt install nginx php-fpm -y && \
    apt install netcat -y && \
    apt install make -y && \
    apt install curl -y && \
    apt install cron -y && \
    apt install nano -y && \
    mkdir -p /home/root

WORKDIR /home/root

#VOLUME /home/skorpion/1.Soft/0.Projects/1.MyProjects/info/info/another/1.courses/1.yodo/1.bash/2.nginx-php-fm/src:/home/root

CMD ["/lib/systemd/systemd"]