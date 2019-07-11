# read csv
# eleicao = read.csv(file.choose(), sep=';', header = T)
eleicao = read.csv('Eleicao.csv', sep=';', header = T)

# exibindo tabel
fix(eleicao)

# plot
plot(eleicao$DESPESAS, eleicao$SITUACAO)

# summary
summary(eleicao)

# correlação
cor(eleicao$DESPESAS, eleicao$SITUACAO)

# general linear model
modelo = glm(formula = SITUACAO ~ DESPESAS, family = 'binomial', data = eleicao)

# plot
plot(eleicao$DESPESAS, eleicao$SITUACAO, col='red', pch=20)
points(eleicao$DESPESAS, modelo$fitted, pch = 4)

# prever
# prever_eleicao = read.csv(file.choose(), sep = ';', header = T)
prever_eleicao = read.csv('', sep = ';', header = T)

# show in table
fix(prever_eleicao)

# criando coluna nova com a probabilidade usando regressão logistica
prever_eleicao$Result = predict(modelo, newdata = prever_eleicao, type = 'response')

# show in table
fix(prever_eleicao)












