# install.packages('e1071')
library(e1071)

credito = read.csv('../projects/curso_R_PY/R/MachineLearning/Credit.csv', sep=',', header = T)

dim(credito)
# summary(credito)
# head(credito)
colnames(credito)

amostra = sample(c(1,2), nrow(credito), T, c(0.7, 0.3))
dim(amostra)

creditoFit = credito[amostra == 1,]
creditoTest = credito[amostra == 2,]
dim(creditoFit)
dim(creditoTest)

modelo = svm(class ~ . , creditoFit)

predicao = predict(modelo, creditoTest)

confusao = table(creditoTest$class, predicao)

# 0.7725753
taxaAcerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaErro = (confusao[2] + confusao[3]) / sum(confusao)



