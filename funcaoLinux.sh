#!/usr/bin/env bash

#variaveis
diretorio="~/Documentos"

#funções
versao_linux(){
    versao=$(cat /etc/os-release)
    echo "A versão do linux é: "
    echo "$versao"
    local diretorio="/home/antonio"
    echo "$diretorio"
}


 versao_linux
 echo "$diretorio"