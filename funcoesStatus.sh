#!/usr/bin/env bash


status_saida(){

    local diretorio="/home/antonio/Documentos"
    ls "$diretorio"
    return 5
}

status_saida
echo "$?"
