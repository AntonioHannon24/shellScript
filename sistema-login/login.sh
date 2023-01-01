#!/usr/bin/env bash

#chamando arquivos de configuração
source conf.conf
source biblioteca



#chamada em linha
case "$1" in
    -l|--login) _login;;#Chamando funcao login

    -h|--help) _help;; #Chamando funcao help
    
    *) echo "Utilize o parâmetro -h ou --help para ajuda em geral"
esac










