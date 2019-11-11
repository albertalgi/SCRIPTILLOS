#!/bin/bash
#author: hawai_2.0
# INSTALL NFC dependencies to clone NFC tags & cards

echo 
echo "################## INSTALLING DEPENDENCIES FOR NFC CLONNING ##################"
echo
echo "     - Installing basic dependencies"
echo

sudo aptitude install autoconf automake

sudo apt-get install pcscd

sudo apt-get install pcsc-tools


echo
echo "     - Installing mfoc"
echo

git clone https://github.com/nfc-tools/mfoc.git
cd mfoc
autoreconf -vis
./configure
sudo make  sudo make install  

echo "     - Installing nfc-mfclassic, nfc-list, nfc-mfsetuid and their brothers"

sudo apt-get install libnfc-dev libnfc-bin libnfc-examples

echo
echo "################## END ################## "
