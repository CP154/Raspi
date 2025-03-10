#!/bin/bash
filename="/home/cp/temperatur1.rrd"
filename2="/home/cp/tempBMP.rrd"
rrdtool graph - \
	--imgformat 'PNG' \
	--width 640 \
	--height 100 \
	--start -1hour \
	--end now \
	--vertical-label "Grad Celsius" \
	--alt-autoscale \
	--title Temperatur \
	DEF:temp1=$filename:temp1:AVERAGE \
	LINE1:temp1#0000FF:'Temperatur DS18B20' \
	GPRINT:temp1:MIN:"Min\\: %3.2lf °C " \
	GPRINT:temp1:MAX:"Max\\: %3.2lf °C " \
	GPRINT:temp1:AVERAGE:"Avg\\: %3.2lf °C " \
	GPRINT:temp1:LAST:"Aktuell\\: %3.2lf °C " \
	DEF:Temperature=$filename2:Temperature:AVERAGE \
        LINE1:Temperature#FF0000:'Temperatur BMP280' \
        GPRINT:Temperature:MIN:"Min\\: %3.2lf °C " \
        GPRINT:Temperature:MAX:"Max\\: %3.2lf °C " \
        GPRINT:Temperature:AVERAGE:"Avg\\: %3.2lf °C " \
        GPRINT:Temperature:LAST:"Aktuell\\: %3.2lf °C " \
