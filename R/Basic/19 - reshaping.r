# build data frame with cbind
cat("\nUsando cbind\n")
name = c('Leandro', 'Cotrim')
age = c(32, 17)
cbind(name, age)

# load library MISS
library(MASS)
print('Load MASS library')

# show colnames Pima.te
# show colnames Pima.tr
cat("\nshow colnames Pima.te and Pima.tr\n")
colnames(Pima.te)
colnames(Pima.tr)

# merge
cat("\nMerge\n")
df.merge = merge(x = Pima.te, y = Pima.tr, by.x = c('bp', 'bmi'), by.y = c('bp', 'bmi'))
df.merge

# melt and cast
cat("\nmelt and cast\n")
dim(ships)
colnames(ships)
rownames(ships)

cat("\nShips\n")
ships
