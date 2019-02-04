#!/bin/sh
docker exec toxi toxiproxy-cli toxic remove adb-test -n latency_downstream
docker exec toxi toxiproxy-cli toxic remove adb-test -n latency_upstream
