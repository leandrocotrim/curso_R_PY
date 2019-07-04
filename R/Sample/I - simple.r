# simple
values = c(0, 1)
probability = c(0.5, 0.5)
size = nrow(iris)

set.seed(12345) # referencia de geração de sample
simple1 = sample(values, size, TRUE, probability)

# prints sample
cat("Sample 1\n")
print(simple1)

set.seed(12345) # build sample for refer
simple2 = sample(values, size, TRUE, probability)

# print simple2
cat("\nSample 2\n")
print(simple2)

# build sample with lines iris
simple_iris = iris
simple_iris$filter = sample(values, size, TRUE, probability)
indexs = which(simple_iris$filter == 1)
simple_iris = simple_iris[indexs,]

# print simple_iris
cat("\nSample iris\n")
print(simple_iris)
