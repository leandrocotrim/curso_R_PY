library(arules)

transacoes = read.transactions(
  '..\\projects\\curso_R_PY\\R\\MachineLearning\\transacoes2.txt', 
  format='basket', sep = ',')

dim(transacoes)
summary(transacoes)

# melhor visualização
inspect(transacoes)
image(transacoes)

# rules
regras = eclat(transacoes, parameter = list(supp = 0.1, maxlen = 15))
inspect(regras)

library(arulesViz)

plot(regras, method = 'graph', control= list(type="items"))


