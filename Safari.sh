#!/bin/bash
# install wine
sudo apt-get install -y wine 
# create download and build directory
mkdir -p ~/build/safari
cd  ~/build/safari
# download
wget http://appldnld.apple.com/Safari5/041-5487.20120509.INU8B/SafariSetup.exe
# wine
wine SafariSetup.exe
