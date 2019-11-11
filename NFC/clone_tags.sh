#!/bin/bash
#author: hawai_2.0
#Script to clone tags once installed the dependencies it needs.

echo 
echo "################## CLONNING ##################"
echo

sudo service pcscd restart

echo "Do you want to dump a charged card? [y/n]"
read response
if [ "$response" = "y" ]
then
    echo "--------------- Put your charged tag ---------------"
    mfoc -O carregada.dmp
fi

echo
echo "-------------- Put the tag you want to charge ---------------"
read response
mfoc -O descarregada.dmp

echo
echo "--------------- Don't remove the tag. Clonning... ---------------"
echo
nfc-mfclassic w descarregada.smp carregada.dmp
echo

echo "################## END ##################"
