#!/bin/bash

# Limpar resultados anteriores
echo "Algorithm,Size,Time,Comparisons,Movements,Calls" > sort_results.csv

# Tamanhos dos vetores
sizes=(1000 5000 10000 50000 100000)

# Algoritmos
algorithms=('i' 's' 'q' 'q3' 'qi' 'q3i' 'h' 'rs' 'b' 'm' 'c' 'bk' 'rx')

# Semente
seed=42

# Executar testes
for alg in "${algorithms[@]}"; do
    for size in "${sizes[@]}"; do
        ./bin/pa1.out -z $size -s $seed -a $alg >> sort_results.csv
    done
done
