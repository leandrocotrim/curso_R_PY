# install.packages('cluster', dependences=T)
library(cluster)

df_data = iris[,1:4]

modelo = pam(df_data, 3)

table(iris$Species, modelo$clustering)

plot(modelo)