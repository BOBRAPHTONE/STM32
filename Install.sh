#!/bin/bash

sudo apt-get update
sleep 1
sudo apt-get install python-pip
pip install pyserial
git clone https://github.com/jsnyder/stm32loader.git
cd stm32loader
#Using the python tool to load the firmware device
stm32loader.py -e -w -v FirstProject/FirstProject/Debug/bin/FirstProject.bin
#Run the example found at https://stm32f4-discovery.net/2014/04/first-time-with-stm32f429-discovery/ using the IDE