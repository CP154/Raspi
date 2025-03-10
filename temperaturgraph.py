#!/usr/bin/python3
import rrdtool
filename="/home/cp/tempBMP.rrd"
ret = rrdtool.graph('-' ,
        '--imgformat', 'PNG' ,
        '--width','640' ,
        '--height','100', 
        '--start','now-1hour' ,
        '--end','now' ,
        '--vertical-label', "Grad Celsius" ,
        '--alt-autoscale' ,
        '--title', 'Temperatur' ,
        'DEF:Temperature='+filename+':Temperature:AVERAGE' ,
        'AREA:Temperature#FF00FF:'  ,
        'LINE1:Temperature#FF00FF:Temperatur' ,
        'GPRINT:Temperature:MIN:Min\\: %3.2lf °C'  ,
        'GPRINT:Temperature:MAX:Max\\: %3.2lf °C'  ,
        'GPRINT:Temperature:AVERAGE:Avg\\: %3.2lf °C'  ,
        'GPRINT:Temperature:LAST:Aktuell\\: %3.2lf °C')

