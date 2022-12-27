#!/usr/bin/env bash



echo "==========================================="
echo "1) Abra o Mozzila"
echo "2) Abra o Gedit"
echo "3) Abra o VsCode"
echo "4) Abra o Postman"
echo "==========================================="
read -p "Selecione uma das opções: " opcao

if [[ "$opcao" -eq "1" ]]; then
    firefox
elif [[ "$opcao" -eq "2" ]];then
    gedit
elif [[ "$opcao" -eq "3" ]];then
    code
elif [[ "$opcao" -eq "4" ]];then
    postman
else
    echo "Código digitado incorretamente!!"
    exit 1
fi