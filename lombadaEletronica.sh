#!/usr/bin/env bash

#limite entre 80 e 85
limite="80"

read -p "Digite a sua velocidade: " velocidade

[[ "$velocidade" -lt "80" ]] \
&& echo "Velocidade ideal" 

[[ "$velocidade" -ge "80" ]] \
&& [[ "$velocidade" -le "85" ]] \
&& echo "Você está no limite"

[[ "$velocidade" -ge "86" ]]  &&  \
echo "Você foi multado!!"