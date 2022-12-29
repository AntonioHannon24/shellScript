#!/usr/bin/env bash

#Conferindo se o usuário é root
if [[ "$UID" -ne "0" ]];then
    echo "Você precisa estar no modo de administrador para executar o programa";
    exit
fi
echo "Preparando o ambiente..."
sleep 2

clear

echo "==== Administração de usuários ===="
echo "
1) Listar usuários
2) Adicionar usuários
3) Deletar usuários
4) Sair
"
echo "==================================="

read -p "Escolha uma opção: " opcao

case "$opcao" in
    1) 
            cut -d ':' -f 1 /etc/passwd; read -p "Sair? (Pressione enter):  "  quit
                if [[ "$quit" = "" ]]; then
                    ./administracaoUsuarios.sh 
                fi;;
    2) 
            read -p "Digite o nome do novo usuário: " newUser 
            adduser $newUser 
            ./administracaoUsuarios.sh ;;
    3) 
            read -p "Digite o nome do usuário que você quer remover: " deleteUser
            read -p "Você tem certeza que quer deletar o usuário $deleteUser (s/n) ?" opcaoDelete 
                if [[ "$opcaoDelete" = "s" ]]; then
                    userdel $deleteUser
                else 
                    exit 1;
                fi
            ./administracaoUsuarios.sh;;
    4) 
            exit ;;
    *) 
            echo "Dados invalidos"
             ./administracaoUsuarios.sh;;
esac
