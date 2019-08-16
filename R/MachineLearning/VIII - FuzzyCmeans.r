# fazzy cmeans

# install.packages('e1071')
library(e1071)

df_data = iris[,colnames(iris) != 'Species']

modelo = cmeans(df_data, 3)

table(iris$Species, modelo$cluster)

