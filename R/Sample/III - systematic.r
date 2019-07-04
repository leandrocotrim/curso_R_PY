# install.packages("TeachingSampling")
library(TeachingSampling)

# build index systematic in 10 of 10 for iris
cat("\nIndex Sample Systematic for iris\n")
indexSample = S.SY(nrow(iris), 10)
indexSample

# print iris rows for systematic sample
cat("\nIris systematic sample\n")
iris[indexSample,]

