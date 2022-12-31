#!/usr/bin/env bash
#Sistema que automatiza a criação de backups
case $1 in
    -h|--help)
        echo "Esse programa serve para efetuar backup de mandeira facil e eficiente" 
        echo "  * Para iniciar o programa, coloque o primeiro parametro como -i "
        echo "  * O segundo parâmetro o diretório na qual você deseja fazer o backup" 
        echo "  * O terceiro e ultimo nome do seu backup";;
    -i| --i)
        if [[ "$3" = "" ]];then
            echo "Você precisa dar um nome ao seu novo backup!!"
        else
            if [[ $(find ~/ -name Backup) = "" ]];then
            mkdir ~/Backup
            fi
            if [[ $(find ~/Backup -name "$3".zip) = "" ]];then
            cd ~/Backup
             zip -r $3.zip  "$2"            
            else
                echo "Esse nome de backup já existe"
            fi
        fi
        ;;
    *) echo "Para ajuda adicione os parametros -h ou --help";;
esac





