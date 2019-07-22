# Naive Bayes
# e1071 e klaR

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

modelo = naiveBayes(class ~ . , data = creditoFit)
class(modelo)

predicao = predict(modelo, creditoTest)

confusao = table(creditoTest$class, predicao)

taxaAcerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaErro = (confusao[2] + confusao[3]) / sum(confusao)

###
# Trabalhando em produção

novoCredito = read.csv('../projects/curso_R_PY/R/MachineLearning/NovoCredit.csv', sep=',', header = T)
dim(novoCredito)

# previsão em produção
predict(modelo, novoCredito)










