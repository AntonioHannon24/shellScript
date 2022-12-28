#!/usr/bin/env bash

#variaveis
diretorio1="/home/antonio/Downloads"
diretorio2="/home/antonio/Imagens"




if [[ -d "$diretorio1"  || -d "$diretorio2" ]];then
    echo "Diretório(s) encontrado(s)."
else
    echo "Os ou diretório(s) não encontrado"
fi