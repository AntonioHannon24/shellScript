#!/usr/bin/env bash

[[ $(type -P dialog) ]] \
&& { echo "Existe"; }||  { echo "Não Existe!!"; }

[[ $UID -ne "0" ]] \
&& { echo "Você não está no Root"; exit; } 

read -p "Nome? " nome

[[ "$nome" ]] \
|| { echo "Você não inseriu o nome";} 

cd /home/antonio/Documentos/antonio/;
[[ -d shellscript ]] \
&& echo "é um diretório"