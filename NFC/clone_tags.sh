#!/bin/bash
#author: hawai_2.0
#Script to clone tags once installed the dependencies it needs.

echo 
echo "################## CLONNING ##################"
echo

echo "--------------- Put your charged tag ---------------"
read i
mfoc -O carregada.dmp

echo
echo "-------------- Put the tag you want to charge ---------------"
read i
mfoc -O descarregada.dmp

echo
echo "--------------- Don't remove the tag. Clonning... ---------------"
echo
nfc-mfclassic w descarregada.smp carregada.dmp
echo

echo "################## END ##################"