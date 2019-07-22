# aprendizado baseado em instancias

# vizinhos mais próximos
# install.packages('class', dependencies=T)
library(class)

head(iris)
summary(iris)

amostra = sample(c(1,2), nrow(iris), T, c(0.7, 0.3))

irisFit = iris[amostra == 1,]
irisTest = iris[amostra == 2,] 

dim(irisFit)
dim(irisTest)

# não tem test
previsao = knn(irisFit[,1:4], irisTest[,1:4], irisFit[,5], k = 3)

confusao = table(irisTest$Species, previsao)

nlinhas = nrow(confusao)

diagonal = diag(nlinhas) == 1
naoDiagonal = diag(nlinhas) == 0

taxaAcerto = sum(confusao[diagonal]) / sum(confusao)
taxaErro = sum(confusao[naoDiagonal]) / sum(confusao)


