#!/usr/bin/env bash

#Efetua downloads de videos do youtube e converte para musica!!

#variaveis do programa

qualidade="256k"    #64k,128k,256k,320k
formatoAudio="mp3"  #BEST,acc, vorbis,m4a,opus,wav


#teste iniciais
[[ "$UID" -eq "0" ]] && { echo "Root? não"; exit 1; }


if ! youtube-dl --embed-thumbnail --audio-quality "$qualidade" --extract-audio --audio-format "$formatoAudio" "$@";then
    echo "Faltou o link!!"
fi