# name variables 
name_she. = 'Carol'
.name_he = 'Leandro'
name.child_ = 'Duda'
s2 = "test"


### D'nt work
# _name_she = "Carol"
# .2name.he = 'Leandro'


# for property use $
test = { }
test$name = "vector 2:10"
print(test)


# cat
cat("Hello Cotrim\n")
cat("Hello ", "Cotrim" , "\n")


# Find variables
print(ls())
print(ls(pattern = "s"))

# Find variabels starts with .
print(ls(all.names = TRUE))


# Delete variabel
rm(s2)
# print(s2) --> Error
