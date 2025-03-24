#!/usr/bin/env bash
while true
do 

var1=`wget https://br.dirkhotz.de/strom -O - | grep Wechselrichter: | awk -F' ' '{print$4}' | awk -F ',' '{print$1}'`
var2=`wget https://br.dirkhotz.de/strom -O - | grep Wechselrichter: | awk -F' ' '{print$4}' | awk -F ',' '{print$2}'`
echo $var1 > Wert1.txt 
echo $var2 > Wert2.txt
rrdupdate wechselrichterDB.rrd N:$var1:$var2

sleep 5
done
