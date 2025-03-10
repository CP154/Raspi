#!/usr/bin/python3
import rrdtool
filename="/home/cp/tempBMP.rrd"
ret = rrdtool.graph('-' ,
        '--imgformat', 'PNG' ,
        '--width','640' ,
        '--height','100', 
        '--start','now-1hour' ,
        '--end','now' ,
        '--vertical-label', "hPa" ,
        '--alt-autoscale' ,
        '--title', 'Luftdruck' ,
        'DEF:Pressure='+filename+':Pressure:AVERAGE' ,
        'AREA:Pressure#00CC00:'  ,
        'LINE1:Pressure#00FF00:Luftdruck' ,
        'GPRINT:Pressure:MIN:Min\\: %3.2lf hPa'  ,
        'GPRINT:Pressure:MAX:Max\\: %3.2lf hPa'  ,
        'GPRINT:Pressure:AVERAGE:Avg\\: %3.2lf hPa'  ,
        'GPRINT:Pressure:LAST:Aktuell\\: %3.2lf hPa')

