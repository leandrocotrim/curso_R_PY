# distribuição normal
# calculo de probabilidade de distribuição normal é pela media e desvio padrão e não por amostra ou população

# estiver antes da media usa se
# pnorm

# se estiver acima da media usa se 
# pnorm com lower.tail=FALSE

### 

# media = 8 dp = 2, objeto < 6?
pnorm(6, 8, 2)

# media = 8 dp = 2, objeto > 6?
pnorm(6, 8, 2, lower.tail = F)
# or 
1 - pnorm(6, 8, 2)

# media = 8, dp = 2, objeto < 6 ou objeto > 10
pnorm(6, 8, 2) + pnorm(10, 8, 2, lower.tail = F)

# qual a chance de tirar objeto < 10 e mais que 8
pnorm(8, 8, 2, lower.tail = F) - pnorm(10, 8, 2, lower.tail = F)
# ou
pnorm(10, 8, 2) - pnorm(8, 8, 2)

# gerando distribuição normal
x = rnorm(100)

# visualizando
qqnorm(x)
qqline(x)

# tete de shapiro
shapiro.test(x)


