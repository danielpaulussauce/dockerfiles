#!/bin/sh
docker run -d --name toxi  -p 19000:19000  toxiproxy /usr/bin/toxiproxy-server
docker exec toxi toxiproxy-cli create adb-test -l 0.0.0.0:19000 -u 192.168.2.115:16000
adb connect localhost:19000
