import numpy as np
import pandas as pd

# load iris apartir de um csv
iris = pd.read_csv('iris.csv')

# tamanho de iris
len_iris = len(iris)

# gerando um número na amostra
# 0 - 149
n = np.random.randint(0, len_iris - 1)

# tamanho da amostra
n_sample = 10

# vetor que receberá a amostra
v = []

# while para pegar itens da amostra de n_sample em n_sample
while len(v) < len_iris // n_sample:
    v.append(n)
    n += n_sample
    if(n >= len_iris): # caso passe da amostra começa de novo
        n -= len_iris

# exibe os index da amostra
v

# extrai a amostra do data frame iris com a função loc
iris.loc[v]