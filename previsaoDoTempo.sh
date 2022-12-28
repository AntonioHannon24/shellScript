#!/usr/bin/env bash

#Variaveis do programa
site="wttr.in/"
cidade=""

#Verifica conexão com a internet
if ! wget -q --spider www.google.com; then echo "Você não tem internet" ; exit 1 ; fi

#verifica se o sistema Curl está instalado
if ! [[ $(type -p curl) ]]; then echo "Você precisa instalar a ferramenta curl no seu sistema"; exit ; fi

read -p "Digite a cidade a ser pesquisada: " cidade

[[ $cidade = "" ]] && { echo "Nenhum dado foi inserido!!"; exit 1;} 

pesquisa=$site$cidade

curl -s $pesquisa