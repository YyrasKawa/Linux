#!/bin/bash
for run in {1..10}
# Создать скрипт sleeper.sh, который будет 10 раз с интервалом в 5 секунд
# писать дату в формате HH:MM:SS и количество процессов одним числом
do
echo $run
date +"%H:%M:%S"
#sleep 5
done

# закомментируйте строку или поменяйте значение sleep


#записать в файл информацию о процессоре
ps -ef > /tmp/task3.txt
# записать в файл информацию об операционной системе,
# но отфильтровать информацию так, чтобы осталось только имя
# (NAME=Alpine Linux)
cat /etc/os-release | grep -w NAME > /tmp/task4.txt
# Выполнить прошлое действие, но так чтобы слово NAME=" не осталось,
# а было только имя в чистом ввиде (Alpine)
cat /etc/os-release | grep -w NAME | awk '{print$1}'| sed 's/NAME="//g' > /tmp/task5.txt
# С помощью скрипта создайте 50 файлов с расширением txt и именнами от
# 50.txt до 100.txt
for number in {50..100}
do
touch /tmp/$number.txt
done
echo "Done"




