from scipy.stats import t

# media 75, amostra 9, dp 10
# como são 9, grau de liberdade é 9 - 1 = 8
# valor de t => 1,5 esse valor é calculado...
# pode se usar o valor de t e o grau de liberdade para achar na tabela a probabilidade

# probabilidade da hora ser menor que 80
# hora salario < 80
t.cdf(1.5, 8)

# probabilidade da hora ser maior que 80
t.sf(1.5, 8)
# ou
1- t.cdf(1.5, 8)