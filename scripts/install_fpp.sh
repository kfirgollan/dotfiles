#!/bin/bash
git clone https://github.com/facebook/PathPicker.git
cd PathPicker/debian
./package.sh
sudo dpkg -i ../fpp*.deb
