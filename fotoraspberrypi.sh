#!/bin/bash

for ((i = 0 ; i < 10 ; i++)); do
	sudo rapistill -w 1920 -h 1080 -o /var/out.jpg
  cp -v /var/out.jpg /home/usuari/Documents/$(date '+%Y%m%d%H%M%S').jpg
  sudo python3 /root/raspberryled.py
  sleep 0
done
