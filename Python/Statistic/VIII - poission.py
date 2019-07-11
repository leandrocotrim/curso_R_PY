# possion
# probabilidade exate usar a função dpois
# probabilidade maior ou menor que algum valor usar a função ppois -> acumulativa

from scipy.stats import poisson

# média 2 acidentes dia
# calcular probabilidade de acontecer 3 acidentes dias
# x = 3
poisson.pmf(3, 2)

# acontecer 3 ou menos acidentes
# x <= 3
poisson.cdf(3, 2)

# acontece mais de 3 acidente
# x > 3
poisson.sf(3, 2)






