from scipy.stats import binom

# evento independetes
# mesmas chances de probabilidade por resultado

# jogar uma moeda 5 vezes e cair cara 3 vezes
# probabilidade 50%
binom.pmf(3, 5, .5)

# 4 sinais de 4 tempos
# probabilidade de 0, 1, 2, 3, 4 abertos
binom.pmf(0, 4, .25)
binom.pmf(1, 4, .25)
binom.pmf(2, 4, .25)
binom.pmf(3, 4, .25)
binom.pmf(4, 4, .25)

# semaforo de 2 tempos
binom.pmf(0, 4, .5)
binom.pmf(1, 4, .5)
binom.pmf(2, 4, .5)
binom.pmf(3, 4, .5)
binom.pmf(4, 4, .5)

# probabilidade acumulativa
binom.cdf(4, 4, .25)

#### ---

# prova 12 questões
# chutar todas acertar 7
# quatro alternativas 25%
binom.pmf(7, 12, .25)

# acetar as 12
binom.pmf(12, 12, .25)

