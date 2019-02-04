#### Build container with toxiproxy to test vusb connections
i am using toxiproxy https://github.com/shopify/toxiproxy

1. run `docker build -t toxiproxy .` to build docker image
2. start a tcp usb bridge and start a device bridge to run on port 16000
3. exec `./start.sh`, it will proxy the device on 16000 through port 19000 and run `adb connect localhost:19000` for you
4. exec `./add-latency.sh 200` to add a latency of 200ms
5. run a adb pull/push to see results
6. exec `./remove_latency.sh` to remove latency again
7. repeat steps 4-6 as much as you want :-D
8. exec `./stop.sh` to remove container and disconnect adb 
