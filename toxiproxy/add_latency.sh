#!/bin/sh
latency=$1

if test -z "$latency" 
then
      echo "no value for latency set, please call script with latency in ms as argument"
      exit 1 
else
      echo "setting latency \$var ms"
fi

docker exec toxi toxiproxy-cli toxic add adb-test -u -t latency -a latency=$latency
docker exec toxi toxiproxy-cli toxic add adb-test -t latency -a latency=$latency
