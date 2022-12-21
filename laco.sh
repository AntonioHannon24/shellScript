#!/usr/bin/env bash


contador="0"

nome1="Antonio"
nome2="Fernando"
nome3="Alves"
nome4="De"
nome5="Souza"
nome6="Maria"
nome7="Aparecida"
nome8="Ana"
nome9="De"
nome10="Fatima"

while sleep 1s; do
echo "$nome[$contador]"
    [[  "$contador" -eq "20"  ]] && echo "Acabou o tempo" || let contador++
done