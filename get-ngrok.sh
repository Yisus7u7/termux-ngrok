#!/bin/bash

echo "Downloading ngrok..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="arm" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "unknown or unsupported architecture"
esac

wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-${architectureURL}.zip -O ngrok.zip
# arm : https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
# aarch46 : https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm64.zip
# i368 : https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
# x86_64 : https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok.zip
rm ngrok.zip
