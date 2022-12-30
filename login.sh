#!/usr/bin/env bash

#variaveis
user="Antonio"
password="88477430"

#chamada em linha

case "$1" in
    -l|--login) 
        read -p "Digite seu usuário: " usuario
        read -t 5 -sp "Digite sua senha: " senha 
        echo ""

        if [[ "$usuario" = "$user"  && "$senha" -eq "password" ]];then
            echo "Login efetuado com sucesso. Preparando ambiente de trabalho"
            sleep 2s
            clear
        else
            echo "Usuário ou senha incorreto!!"
            exit 1
        fi

        echo "========== Bem vindo $user ==================="
        echo \
        "
        1) Abrir leafpad
        2) Dbeaver
        3) Abrir Mozzila
        4) Sair
        "
        echo "==============================================="

        read -p "Digite sua opção: " number

        case "$number" in
            1) [[ $(type -P leafpad) ]] || { echo "leafpad não existe no sistema"; exit 1 ;}; leafpad & ;;
            2) [[ $(type -P dbeaver-ce) ]] || { echo "dbeaver não existe no sistema"; exit 1 ;}; dbeaver-ce & ;;
            3)[[ $(type -P firefox) ]] || { echo "Firefox não existe no sistema"; exit 1 ;}; firefox & ;;
            4) exit ;;
            *) echo "Dados invalidos" ;;
        esac;;
    -h|--help)
        echo "Opções disponiveis:
        -l, --login (Abrir programa com menu)
        -h, --help (Abre essa opção de ajuda)"
    ;;
    -b|--b) 
        echo "O arquivo origem é :$2"
        echo "O arquivo de destino é :$3"
    ;;
    *) echo "Utilize o parâmetro -h ou --help para ajuda em geral"
esac










