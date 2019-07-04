# factors are R data objects, are categorize the data
# Sample: Female and Male, True and False amd etc.

data.factor = factor(c("a", "b", "b", "c"))
print("factor")
print(data.factor)

cat("\nIs factor use function is.factor()\n")
is.factor(data.factor)

cat("\nonly levels\n")
levels(data.factor)

# Build factor
cat("\nBuild factor\n")
v = c("Casado", "Solteiro", "Divorciado")
gl(length(v), 2, labels = v, ordered = TRUE)
