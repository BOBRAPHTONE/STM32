#!/bin/bash

sudo apt-get update
sleep 1
sudo apt-get install gcc-arm-none-eabi binutils-arm-none-eabi gdb-arm-none-eabi
sudo apt-get install python-pip
pip install pyserial
git clone https://github.com/wassfila/STM32_IoT_HelloWorld # more cool examples here
# Bootloader 
git clone git@github.com:blacksphere/blackmagic.git
# python ./stm32loader -p /dev/tty.SLAB_USBtoUART -e -w -v src/blackmagic_dfu.bin
#  https://developer.mbed.org/users/hudakz/code/STM32F103C8T6_Hello/
# http://sgreg.fi/blog/article/bare-metal-arm-cortexm-hello-world-on-linux
# https://www.hackster.io/paramaggarwal/converting-an-stm32f103-board-to-a-black-magic-probe-e701d4
git clone https://github.com/jsnyder/stm32loader.git
cd stm32loader
#Using the python tool to load the firmware device
stm32loader.py -e -w -v FirstProject/FirstProject/Debug/bin/FirstProject.bin
#Run the example found at https://stm32f4-discovery.net/2014/04/first-time-with-stm32f429-discovery/ using the IDE