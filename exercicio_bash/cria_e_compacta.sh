#!/bin/bash

read -p "Digite o nome da pasta: " NOME

if [ -z "$NOME" ]; then
    echo "Erro: Você precisa fornecer um nome."
    exit 1
fi

# Criando a pasta
mkdir "$NOME"

if [ $? -eq 0 ]; then
    echo "Pasta '$NOME' criada!"

    # Compactando a pasta
    tar -czf "$NOME.tar.gz" "$NOME"

    if [ $? -eq 0 ]; then
        echo "Pasta '$NOME' compactada com sucesso como '$NOME.tar.gz'."
    else
        echo "Erro ao compactar a pasta '$NOME'."
    fi
else
    echo "Erro ao criar a pasta '$NOME'."
fi
