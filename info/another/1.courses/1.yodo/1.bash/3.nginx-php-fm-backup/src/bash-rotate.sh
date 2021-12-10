#!/bin/bash
# to start execute from root: /home/root/bash-rotate.sh

# Получаем список бекапов из папки, в которой они хранятся.
backup_list=$(ls /root/Yandex.Disk/ | grep backup)

# Создаем переменную с текущим месяцем
month=$(date +"%m")

# Задаем дату, когда бекап будет считаться устаревшим.
expire_date=$(date +"%d" -d '-3 day')
echo "Удаляем бекапы, старше $(date +"%d.%m.%Y" -d '-3 day')"


for file in $backup_list; do

  # Получаем дату бекапа
  backup_date=$(echo $file | awk -F"-" '{print $3}')

  echo "backup_2021-$month-$backup_date.tar.gz"
  echo "$backup_date < $expire_date"

# Создаем условие, если переменная backup_date меньше чем expire_date
# тогда удаляем файл бекапа
 tmp_date=0$(echo $backup_date | awk -F"." '{print $1}')
  if [[ $tmp_date < $expire_date ]]
  then
    echo "Удаляем файл  backup_2021-$month-$backup_date"
    rm -f /root/Yandex.Disk/backup_2021-$month-$backup_date
  fi

done