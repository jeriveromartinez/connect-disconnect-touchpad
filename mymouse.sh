#!/bin/bash

ID=$(find /sys -name dev | grep usb | grep mouse | wc -l)

if [ $ID -ge 1 ]; then
   modprobe -r psmouse    
else
   modprobe psmouse
fi
