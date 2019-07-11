# evento independetes
# mesmas chances de probabilidade por resultado

# jogar uma moeda 5 vezes e cair cara 3 vezes
# probabilidade 50%
dbinom(3, 5, .5)

# 4 sinais de 4 tempos
# probabilidade de 0, 1, 2, 3, 4 abertos
dbinom(0, 4, 0.25) # 0
dbinom(1, 4, 0.25) # 1
dbinom(2, 4, 0.25) # 2
dbinom(3, 4, 0.25) # 3
dbinom(4, 4, 0.25) # 4

# semaforo de 2 tempos
dbinom(0, 4, 0.5) # 0
dbinom(1, 4, 0.5) # 1
dbinom(2, 4, 0.5) # 2
dbinom(3, 4, 0.5) # 3
dbinom(4, 4, 0.5) # 4

# probabilidade acumulativa
pbinom(4, 4, .25) # only 1

#### ---

# prova 12 questões
# chutar todas acertar 7
# quatro alternativas 25%
dbinom(7, 12, .25)

# acetar as 12
dbinom(12, 12, .25)









