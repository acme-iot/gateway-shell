#!/usr/bin/env bash

mkdir ~/iotwifi
cd ~/iotwifi

# setup IoT image
docker pull cjimti/iotwifi
wget https://raw.githubusercontent.com/cjimti/iotwifi/master/cfg/wificfg.json

docker run --rm --privileged --net host -v $(pwd)/wificfg.json:/cfg/wificfg.json cjimti/iotwifi
