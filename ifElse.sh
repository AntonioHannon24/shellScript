#!/usr/bin/env bash

if wget -q --spider www.google.com
    then
        echo "Tem internet"
else
        echo "Não tem internet"
    fi


read -p "Está vindo carro da direita? (Sim/Não): " rep1
read -p "Está vindo carro da esquerda? (Sim/Não): " rep2


if [[ "$rep1" = "Não" && "$rep2" = "Não" ]];then
    echo "Pode atravessar!!"
else
    echo "Não Pode atravessar!!"
    exit 1
fi