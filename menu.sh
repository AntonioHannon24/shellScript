#!/usr/bin/env bash

echo "==========================================="
echo "1) Abra o Mozzila"
echo "2) Abra o Gedit"
echo "3) Abra o VsCode"
echo "4) Abra o Postman"
echo "5) Sair"
echo "==========================================="
read -p "Selecione uma das opções: " opcao

if [[ "$opcao" -eq "1" ]]; then
    firefox &
    ./menu.sh
elif [[ "$opcao" -eq "2" ]];then
    gedit &
    ./menu.sh
elif [[ "$opcao" -eq "3" ]];then
    code &
    ./menu.sh
elif [[ "$opcao" -eq "4" ]];then
    postman &
    ./menu.sh
elif [[ "$opcao" -eq "5" ]];then
    echo "Saindo do programa!"; exit 0;
else
    echo "Código digitado incorretamente!!"
    ./menu.sh
fi