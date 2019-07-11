# speed -> milhas por hora
# dist -> pes, distancia que levou para parar

# shape
dim(cars)

# head
head(cars)

# summary
summary(cars)

# correlacao
cor(cars)

# criando modelo linear
modelo = lm(speed ~ dist, data = cars)
modelo # show model description

# plotando modelo para analise
plot(modelo)

# plot dados, formula e dados
plot(speed ~ dist, cars)
# exibindo linha do modelo nos dados
abline(modelo)


# mostrando coeficientes do modelo
modelo$coefficients

# formula do modelo linear
# 22 é a distncia que levou para parar
modelo$coefficients[1] + modelo$coefficients[2] * 22
# ou
predict(modelo, data.frame(dist=22))

# demorou 50 pes para parar
predict(modelo, data.frame(dist=50))


### 
summary(modelo)

# outras informções do modelo
attributes(modelo)

# residuais
modelo$residuals
 
# valores ajustados
modelo$fitted.values

# valores ajustados do modelo comparados com a distancia da amostra
# são os dados usados para cria o pradrão
plot(modelo$fitted.values, cars$dist)
