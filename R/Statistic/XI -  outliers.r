# outliers

# plota com outliers
boxplot(iris$Sepal.Width)

# plota sem outliers
boxplot(iris$Sepal.Width, outline = F)

# obtendo os outliers
boxplot.stats(iris$Sepal.Width)$out

###

# pacote para outliers
# install.packages('outliers')
library(outliers)

# outliers do final
outlier(iris$Sepal.Width)

# outliers do começo
outlier(iris$Sepal.Width, opposite = T)
