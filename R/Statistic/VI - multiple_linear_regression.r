# regressão linear multipla
# dataset mtcars

# caracteristicas
# mpg consumo de galões por milha
# cyl cilindros
# disp polegadas cubicas do motor
# hp potencia em cavalos
colnames(mtcars)

# shape, 32 veiculos com 11 caracteristicas
dim(mtcars)


### regressão linear simples
cor(mtcars[1:4])

# criando o modelo com mpg e disp
modelo = lm(mpg ~ disp, mtcars)

# vendo o modelo (r * r)
summary(modelo)$r.squared

# r * r ajustado 
summary(modelo)$adj.r.squared

# plot
plot(mpg ~ disp, data = mtcars)
abline(modelo)

# previsão
predict(modelo, data.frame(disp=200))

### regressão linear multipla
cor(mtcars[1:4])

# criando o modelo com mpgm disp, cyl e hp
modelo2 = lm(mpg ~ disp + cyl + hp, data = mtcars)

# vendo o modelo (r * r)
summary(modelo2)$r.squared

# r * r ajustado 
summary(modelo2)$adj.r.squared

# predict
predict(modelo2, data.frame(disp=200, hp=100, cyl=4))


