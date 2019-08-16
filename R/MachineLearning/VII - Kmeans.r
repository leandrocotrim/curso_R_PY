# k-means

# iris
df_data = iris[, colnames(iris) != 'Species']

clusters = kmeans(df_data, 3)

table(iris$Species, clusters$cluster)


plot(df_data, col=clusters$cluster)