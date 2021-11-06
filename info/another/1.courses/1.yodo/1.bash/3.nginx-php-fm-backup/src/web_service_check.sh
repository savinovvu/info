#!/bin/bash

tg="/home/root/telegram.sh"

# Возвращение вывода к стандартному форматированию
NORMAL='\033[0m'      # ${NORMAL}

# Цветом текста (жирным) (bold) :
WHITE='\033[1;37m'    # ${WHITE}

# Цвет фона
BGRED='\033[41m'      # ${BGRED}
BGGREEN='\033[42m'    # ${BGGREEN}
BGBLUE='\033[44m'     # ${BGBLUE}

nginxstatus=$(systemctl status nginx | grep -Eo "running|dead|failed")

if [[ $nginxstatus == 'running' ]]
  then
    echo -en  "${WHITE} ${BGGREEN} Веб сервер работает ${NORMAL}\n"
  else
    $tg "Nginx не работает " > /dev/null
    systemctl restart nginx
    sleep 1
    $tg " Статус Nginx после перезапуска: $(systemctl status nginx | grep -Eo "running|dead|failed")" > /dev/null
fi


phpfpmstatus=`systemctl status php7.4-fpm.service | grep -Eo "running|dead|failed"`
if [[ $phpfpmstatus == 'running' ]]
    then
        echo -en  "${WHITE} ${BGGREEN} php7.2-fpm работает ${NORMAL}\n"
    else
        $tg "Статус php7.2-fpm $phpfpmstatus Пробуем перезапустить."
        systemctl restart php7.2-fpm # Перезапуск php7.2-fpm
        sleep 1 #  Ожидаем 1 секунду, чтобы php7.2-fpm точно запустился.

        $tg "Статус php7.2-fpm после перезапуска $(systemctl status php7.2-fpm | grep -Eo "running|dead|failed")"
fi