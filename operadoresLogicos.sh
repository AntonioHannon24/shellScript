#!/usr/bin/env bash

nomeConferir="Antonio"
 
read -p "Qual é seu nome? " nome
test -z "$nome"                         \
&& { echo "O campo nome está nulo"; exit; } \
|| echo "Sua Variavel não é nula"

test "$nome" = "$nomeConferir" \
&& echo "$nome é igual a $nomeConferir" \
|| echo "$nome é diferente de $nomeConferir" 








