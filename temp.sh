#!/usr/bin/env bash

####Erste Aufgabe####

#cat /sys/bus/w1/devices/28-00000a55244c/w1_slave
#while true
#do
#cat /sys/bus/w1/devices/28-00000a55244c/w1_slave | awk '{print $10}' | cut -c 3-4
#sleep 1
#done

####Zweite Aufgabe####

#while true
#do
#cat /sys/bus/w1/devices/28-00000a55244c/w1_slave | grep t=| awk '{print $10}' |sed 's/t=\([0-9]\{2\}\)\([0-9]\{3\}\)/Temperatur: \1.\2°C/g'
#sleep 1
#done

####Aufgabe RRD Datenbank#####

while true
do
vartemp=`cat /sys/bus/w1/devices/28-00000a55244c/w1_slave | grep t=| awk '{print $10}' |sed 's/t=\([0-9]\{2\}\)\([0-9]\{3\}\)/\1.\2/g'`
echo $vartemp
rrdupdate temperatur1.rrd N:$vartemp
sleep 1
done

