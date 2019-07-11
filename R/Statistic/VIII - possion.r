# possion
# probabilidade exata usar a função dpois
# probabilidade maior ou menor que algum valor usar a função ppois -> acumulativa

# média 2 acidentes dia
# calcular probabilidade de acontecer 3 acidentes dias
# x = 3
dpois(3, lambda = 2)

# acontecer 3 ou menos acidentes
# x <= 3
ppois(3, lambda = 2)

# acontece mais de 3 acidente
# x > 3
ppois(3, lambda = 2, lower.tail = F)






