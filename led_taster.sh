#!/bin/bash
LED_PIN=21
BUTTON_PIN=13

pinctrl set 13 ip
pinctrl set 21 op

while true
do
pinctrl get 13 | grep hi && pinctrl set 21 dh
pinctrl get 13 | grep hi || pinctrl set 21 dl
sleep 1
done

