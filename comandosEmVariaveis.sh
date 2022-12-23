#!/usr/bin/env bash

listagem=$(ls /boot)
listagemDois=`ls /home`
listagemTres=`ls ~/Documentos`
ID="$UID"
diretorio="/home/antonio"
diretorioDois="/home/antonio/Documentos"



echo -e "Listando '/boot' \n $listagem"
echo -e "Listando '/home' \n $listagemDois"
echo -e "Listando '/Documentos' \n $listagemTres"
echo -e "Id do usuário: $ID \n"

cd "$diretorio"

echo -e "Executando o comando PWD $(pwd) \n"


cd "$diretorioDois"

echo -e "Executando o comando PWD"
pwd