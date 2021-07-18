#!/bin/bash
for i in 0 1 2 3 4 15 #переменной $i будем поочередно присваивать значения от 0 - 4, 15 включительно
do
#echo "Console number is $i" >> /dev/pts/$i #Пишем в файл /dev/pts/$i(файл виртуального терминала) строку "Console number is $i"
echo "Console number is $i"  # console.log
done #цикл окончен
exit 0