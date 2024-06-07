#!/bin/bash

# Nome do programa C++
programa="pa1.out"

# Nome do arquivo CSV de saída
arquivo_saida="resultados.csv"

# Limpa/cria o arquivo de saída
> $arquivo_saida

#cria um cabeçcalho
echo "iteracao,alg,alg,seed,seed,size,size,time,time,cmp,cmp,move,move,calls,calls" >> $arquivo_saida

# Executa o programa várias vezes
for i in {1..100}
do
    output=$(./bin/pa1.out -z $i -s 32 -a b -t 2)
    # Executa o programa e redireciona a saída para o arquivo .csv
    echo "$i,$output" | tr ' ' ',' >> $arquivo_saida
done