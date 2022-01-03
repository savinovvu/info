FROM ubuntu:20.04

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt upgrade -y && \
    apt install netcat -y && \
    apt install make -y && \
    apt install curl -y && \
    mkdir -p /home/root

WORKDIR /home/root

RUN apt install --no-install-recommends nginx mariadb-server php php-fpm php-zip php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc -y

CMD ["/lib/systemd/systemd"]