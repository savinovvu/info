FROM ubuntu:20.04

RUN apt update && apt upgrade -y && \
    apt install nginx php-fpm -y && \
    apt install netcat -y && \
    apt install make -y && \
    apt install curl -y && \
    apt install cron -y && \
    apt install nano -y && \
    apt install wget -y && \
    mkdir -p /home/root

WORKDIR /home/root

CMD ["/lib/systemd/systemd"]