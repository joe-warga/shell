#!/bin/bash
echo brightness from 
cat /sys/class/backlight/intel_backlight/brightness
sudo su -c "echo ${1} >/sys/class/backlight/intel_backlight/brightness"
echo to ${1}
