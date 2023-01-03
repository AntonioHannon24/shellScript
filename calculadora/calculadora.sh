#!/usr/bin/env bash

#importando biblioteca
source biblioteca

#verificando se o usuário é root

(( $UID == 0 )) && { echo "Usuário root não pode executar a calculadora"; exit 1;}

principal(){
    echo "============="
    echo "1) '+' Soma"
    echo "2) '-' Subtração"
    echo "3) '*' Multiplicação"
    echo "4) '/' Divisão"
    echo "5) Sair"
    echo "============="
    read -p "Escolha a opção: " opcao
    case "$opcao" in
        1) clear; soma ;;
        2) clear; subtracao;;
        3) clear; multiplicacao;;
        4) clear; divisao;;
        5) exit 1;;
        *) echo "Código invalido!!"; sleep 2s; clear ; principal;;
    esac
}

principal