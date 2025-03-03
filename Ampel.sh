#!/bin/bash
pinctrl set 16 op
pinctrl set 20 op
pinctrl set 21 op
while true 
do
pinctrl set 16 dh
sleep 1
pinctrl set 16 dh
pinctrl set 20 dh
sleep 1
pinctrl set 16 dl
pinctrl set 20 dl
pinctrl set 21 dh
sleep 2
pinctrl set 21 dl
pinctrl set 20 dh
sleep 1
pinctrl set 20 dl
pinctrl set 16 dh
sleep 1
done 
