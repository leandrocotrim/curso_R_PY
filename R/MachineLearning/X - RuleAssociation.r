# setwd('C:\Users\leandro.cotrim\projects\curso_R_PY\R\MachineLearning')
# getwd() get path

# install.packages('arules', dependecies=T)
library(arules)

transacoes = read.transactions(
    '..\\projects\\curso_R_PY\\R\\MachineLearning\\transacoes.txt', 
    format='basket', sep = ',')

dim(transacoes)
summary(transacoes)

# melhor visualização
inspect(transacoes)
image(transacoes)


regras = apriori(
    transacoes
    , parameter = list(supp=0.5, conf=0.5)
)

regras # view count
inspect(regras) # best visualization

# para visualizar melhor
# install.packages('arulesViz', dependencies=T)
library(arulesViz)

plot(regras)

plot(regras, method="graph", control = list(type="items"))













