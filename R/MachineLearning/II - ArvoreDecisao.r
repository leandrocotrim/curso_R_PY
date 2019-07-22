# Árvore de Decisão

# install.packages('rpart', dependences=T)
library(rpart)

credito = read.csv('../projects/curso_R_PY/R/MachineLearning/credit.csv', sep=',', header = T)
dim(credito)
colnames(credito)

amostra = sample(c(1, 2), nrow(credito), T, c(0.7, 0.3))

creditoFit = credito[amostra == 1, ]
creditoTest = credito[amostra == 2, ] 
dim(creditoFit)
dim(creditoTest)

# anova -> seria regressão
modelo = rpart(class ~ ., creditoFit, method = 'class')

plot(modelo)
text(modelo, use.n = T, all = T, cex=.8)

probabilidade = predict(modelo, creditoTest)
dim(probabilidade)
head(probabilidade)

cred = cbind(creditoTest, probabilidade)
fix(cred)

cred['Result'] = ifelse(cred$bad >= 0.5, 'bad', 'good')
fix(cred)

confusao = table(cred$class, cred$Result)

taxaAcerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaErro = (confusao[2] + confusao[3]) / sum(confusao)









