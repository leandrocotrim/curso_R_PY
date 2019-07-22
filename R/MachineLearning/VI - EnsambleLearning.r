 # Ensamble Learning

# install.packages('randomForest', dependecies=T)
library(randomForest)

credito = read.csv('../projects/curso_R_PY/R/MachineLearning/Credit.csv', sep=',', header = T)

dim(credito)
# summary(credito)
# head(credito)

colnames(credito)

amostra = sample(c(1,2), nrow(credito), T, c(0.7, 0.3))
creditoFit = credito[amostra == 1,]
creditoTest = credito[amostra == 2,]

modelo = randomForest(class ~ . 
                      , data = creditoFit
                      , ntree = 100
                      , importance = T)

varImpPlot(modelo)

previsao = predict(modelo, creditoTest)
confusao = table(previsao, creditoTest$class)

diagonal = diag(nrow(confusao))

taxaAcerto = sum(confusao[diagonal == 1]) / sum(confusao)













