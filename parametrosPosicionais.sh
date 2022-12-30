#!/usr/bin/env bash

echo "O nome do programa é \$0: $0"
echo "O primeiro parâmetro passado foi \$1: $1"
echo "O segundo parâmetro passado foi \$2:$2"
echo "O terceiro parâmetro passado foi \$3:$3"
echo "O decimo parâmetro passado foi \$10: ${10}"

echo "O número total de parâmetros passados foram: $#"
IFS=:
echo "Todos os parâmetros com \$*: $*"
echo "Todos os parâmetros com \$@: $@"

echo "Número do PID do processo atual ou do propio programa: $$"
echo "Número do PID do ultimo job em segundo plano $!"
echo "Último argumento do último comando executado $_"
echo "Mostra o código de retorno do último comando executado $?"


while sleep 1s; do
    echo "Número de PID:$$"  #numero do processo!!
done

