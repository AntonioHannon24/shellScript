#!/usr/bin/env bash
#Sistema que automatiza a criação de backups
source funcoes
case $1 in
    -h|--help)  _help ;;## chama a função help
    -i| --i)    _backup "$@" ;; ## chama a funcao backup
    *) echo "Para ajuda adicione os parametros -h ou --help";;
esac





