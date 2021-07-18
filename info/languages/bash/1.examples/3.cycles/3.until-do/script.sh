#!/bin/bash
echo "Введите числитель: "
read dividend
echo "Введите знаменатель: "
read divisor

dnd=$dividend #мы будем изменять переменные dividend и divisor,
#сохраним их знания в других переменных, т.к. они нам
#понадобятся
dvs=$divisor
remainder=1

until [ "$remainder" -eq 0 ]
do
let "remainder = dividend % divisor"
dividend=$divisor
divisor=$remainder
done

echo "НОД чисел $dnd и $dvs = $dividend"