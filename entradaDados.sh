#!/usr/bin/env bash

read -p "Qual o seu nome? " nome 
read -p "Qual é sua altura? " altura
read -p "Qual é a sua escolaridade? " escolaridade
read -ep  "Qual diretório você quer entrar? " diretorio

cd "$diretorio"

echo "Seu nome é: $nome, sua altura é de: $altura"
echo "E seu nivel de escolariodade é: $escolaridade"

echo "Você está no diretório:  $(pwd)" 
