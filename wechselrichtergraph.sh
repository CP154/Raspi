#!/bin/bash
filename="/home/cp/wechselrichterDB.rrd"
rrdtool graph - \
        --imgformat 'PNG' \
        --width 640 \
        --height 100 \
        --start -1hour \
        --end now \
        --vertical-label "Watt" \
        --alt-autoscale \
        --title Wechselrichterleistung \
        DEF:Wechselrichter1=$filename:Wechselrichter1:AVERAGE \
        LINE1:Wechselrichter1#0000FF:'Leistung Wechselrichter 1' \
        GPRINT:Wechselrichter1:MIN:"Min\\: %3.2lf Watt " \
        GPRINT:Wechselrichter1:MAX:"Max\\: %3.2lf Watt  " \
        GPRINT:Wechselrichter1:AVERAGE:"Avg\\: %3.2lf Watt " \
        GPRINT:Wechselrichter1:LAST:"Aktuell\\: %3.2lf Watt " \
        DEF:Wechselrichter2=$filename:Wechselrichter2:AVERAGE \
        LINE1:Wechselrichter2#FF0000:'Leistung Wechselrichter 2' \
        GPRINT:Wechselrichter2:MIN:"Min\\: %3.2lf Watt " \
        GPRINT:Wechselrichter2:MAX:"Max\\: %3.2lf Watt " \
        GPRINT:Wechselrichter2:AVERAGE:"Avg\\: %3.2lf Watt " \
        GPRINT:Wechselrichter2:LAST:"Aktuell\\: %3.2lf Watt " \

