#!/usr/bin/env bash

#Variaveis do programa
servidor1="icanhazip.com"
servidor2="ifconfig.co"

#testes iniciais
echo "Verificando se há conexão com a internet..."

if ! wget -q --spider www.google.com; then
    echo "Você necessita de internet!!"
    exit 1;
fi

echo \

exec_=$(if ! curl -s "$servidor1";then  curl -s "$servidor2";fi;)

echo "O seu ip externo é: $exec_"



