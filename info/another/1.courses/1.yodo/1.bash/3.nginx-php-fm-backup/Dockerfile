FROM ubuntu:20.04

RUN apt update && apt upgrade -y && \
    apt install nginx php-fpm -y && \
    apt install netcat -y && \
    apt install make -y && \
    apt install curl -y && \
    apt install cron -y && \
    apt install nano -y && \
    apt install wget -y && \
    apt install rsync -y && \
    mkdir -p /home/root

WORKDIR /home/root

RUN alias ll='ls -lrth' && \
    alias mksh='echo "#!/bin/bash" > script.sh && chmod 777 script.sh && nano script.sh' && \
    alias bckp='echo "Как назовем бекап?" && read dir && sudo rsync -av $(pwd)/ /root/backup_$dir/ && echo "Бекап папки $(pwd) сохранен в /root/backup_$dir/" && ls -l /root/ | grep $dir'

CMD ["/lib/systemd/systemd"]