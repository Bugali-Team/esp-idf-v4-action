#!/bin/bash

URL_ESP_IDF=https://github.com/Bugali-Team/esp-idf
URL_ESP_ADF=https://github.com/Bugali-Team/esp-adf

echo -e "\n## Installing prerequisites"

sudo DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata

sudo apt-get install -y git wget flex bison gperf python3 python3-pip python3-setuptools python-is-python3 python3-libusb1 cmake ninja-build ccache libffi-dev libssl-dev dfu-util

mkdir ~/esp

# install esp idf
cd ~/esp
git clone --recursive $URL_ESP_IDF
cd ~/esp/esp-idf
./install.sh > ~/esp-idf-install.log 2>&1

# install esp adf
cd ~/esp
git clone --recursive $URL_ESP_ADF
