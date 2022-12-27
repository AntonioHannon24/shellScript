#!/usr/bin/env bash

#teste de internet
if ! wget -q --spider www.google.com; then
   echo "Você não tem internet"
   exit 1
fi

#tesde de usuário root
[[ "$UID" -ne "0" ]] \
&& { echo "Necessita de root!!"; exit 1;}


#apt upgrade
if apt update; then
    echo "Lista de pacotes foram atualizados. [OK]"
else 
    echo "apt update falhou!! saindo da atualização! [ERRO]"
fi

#apt upgrade
if apt -y upgrade; then
    echo "Upgrade de pacotes foram atualizados. [OK]"
else 
    echo "Upgrade de pacotes falhou!! saindo da atualização! [ERRO]"
    exit 1
fi

#apt clean
if apt clean; then
    echo "Arquivos desnecessarios foram retirados. [OK]"
else 
    echo "apt clean deu erro. [ERRO]"
    exit 1
fi