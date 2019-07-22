# selecionando os melhores atributos

# ver melhor atributos
# install.packages('FSelector', dependences=T)
library(FSelector)

credito = read.csv('../projects/curso_R_PY/R/MachineLearning/Credit.csv', sep=',', header = T)

# visualizando atributos mais relevantes
importancia = random.forest.importance(class ~  . , credito)

dim(importancia)
head(importancia)
importancia > 11 # pegar os indexs == TRUE

amostra = sample(c(1,2), nrow(credito), T, c(0.7, 0.3))
creditoFit = credito[amostra == 1,]
creditoTest = credito[amostra == 2,]

# algoritimo svm
modelo = svm(
  class ~ checking_status + duration + credit_history + purpose
  + credit_amount 
  , creditoFit)


predicao = predict(modelo, creditoTest)

# matrix confusão
confusao = table(creditoTest$class, predicao)

# taxa
taxaAcerto = (confusao[1] + confusao[4]) /sum(confusao)
taxaErro = (confusao[2] + confusao[3]) /sum(confusao)

# nesse caso a taxa caiu para 0.72
# problemas não foi usada a mesma amostra











