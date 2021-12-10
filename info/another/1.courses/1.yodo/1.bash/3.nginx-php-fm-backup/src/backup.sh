!/bin/bash
# to start execute from root: /home/root/backup.sh

otkuda="home/root/app/"

kuda="home/root/mnt/backup/"

which_dir="dir1 dir2 dir3 dir4 dir5"

# бэкапы под конкретную дату
mkdir -p $kuda$(date +"%Y-%m-%d")

backup_dir="$kuda$(date +"%Y-%m-%d")"


# Начинаем цикл for, где для каждого значения переменной (списка в ней) делаем (do) набор действий
for dir in $which_dir; do

echo "Копируем $otkuda$dir в $backup_dir"

  # Копируем указанные папки рекурсивно (-a), с выводом процесса (-v) и удобочитаемыми размерами (-h)
rsync -avh  $otkuda$dir $backup_dir
#echo  "$otkuda$dir $backup_dir"

done



# Архивируем всю папку, в которой лежит бекап
# c - новый файл
# v - описание процесса сжатия
# f - имя файла
# z - сжатие gzip
tar -cvzf /root/Yandex.Disk/backup_$(date +"%Y-%m-%d").tar.gz $backup_dir

rm -rf $backup_dir

ls -l $kuda

# Перезапуск, на всякий слуай, чтобы бекап чтоно выгрузился
yandex-disk stop
yandex-disk start
# распаковать: tar -xvf /mnt/backup/backup_2021-10-12.tar.gz
# touch /root/Yandex.Disk/backup_2021-12-{1..10}.tar.gz