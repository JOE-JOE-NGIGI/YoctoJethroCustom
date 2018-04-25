#!/bin/bash
#STATION MODE  (there is also AP mode)

ip link set wlan0 up                                            #Enable wlan0 port
wpa_passphrase wifiSSID wifipassword > wifi.conf                #Generate a wpa_suppllicant configuration file
wpa_supplicant -D wext -i wlan0 -c wifi.conf -B                #connect to the set wifi and run it in the background 
dhclient wlan0                                                  #obtain ip (this will take a while)
ip addr                                                         #checking ip obtained by wlan0
