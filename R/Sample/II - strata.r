# install.packages('sampling')
# case has errors in installation, remove and reinstall

# load package, whitout quote
library(sampling)

cat("\niris strtat\n")
# (data, stratanames = NULL, size, method = c("srswor", "srswr", "poisson", "systematic"), pik, description = FALSE) 
sample = strata(iris, c("Species"), c(25, 25, 25), "srswor")
dim(sample)
summary(sample)

cat("\ninfert strtat\n")
summary(infert)

# number of infert rows
total.lines = nrow(infert)

# length sample
specie.length = 100
specie_0_5 = 12 / total.lines * specie.length
specie_6_11 = 120 / total.lines * specie.length
specie_12 = 116 / total.lines * specie.length

# values with round
cat("\nRound values\n")
specie.values = c(round(specie_0_5), round(specie_6_11), round(specie_12))
print(specie.values)

# (data, stratanames = NULL, size, method = c("srswor", "srswr", "poisson", "systematic"), pik, description = FALSE) 
infert.sample = strata(infert, c("education"), specie.values, "srswor")
cat("\nInfert Sample\n")
summary(infert.sample)

