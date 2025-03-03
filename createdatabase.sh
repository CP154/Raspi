#!/bin/bash
rrdtool create /home/cp/NAME.rrd --step 5 \
DS:temp1:GAUGE:600:-30:100 \
RRA:AVERAGE:0.5:5s:1d \
RRA:AVERAGE:0.5:1m:30d \
RRA:AVERAGE:0.5:10m:1y \
RRA:AVERAGE:0.5:1d:20y \
RRA:MIN:0.5:5s:1d \
RRA:MAX:0.5:5s:1d
