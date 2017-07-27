#!/bin/bash
sudo apt-get update
sleep 1
sudo apt-get install python-pip
pip install pyserial
git clone https://github.com/jsnyder/stm32loader.git
cd stm32loader