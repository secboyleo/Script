#!/bin/bash
#
clear
echo -e "______ BASE 64 ______\n"
echo "Options:"
echo "[1] Codificar input em base64"
echo "[2] Decodificar input em base64"
echo -e "[3] Sair"
read -p ">> " opt
#
case $opt in
	1) read -p "Input a codificar: " codinp
	   echo $codinp | base64
	   read -p "Tecle algo para recomecar" i
	   ./base64.sh ;;
	#
	2) read -p "Input para decodificar: " decinp
	   echo $decinp | base64 -d
	   read -p "Tecla algo para recomecar" i
	   ./base64.sh ;;
	#
	3) echo "Script finalzado" ;;
esac
