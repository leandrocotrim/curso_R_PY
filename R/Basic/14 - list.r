# object which contain any element multiply
# use function list()

l1 = list(1, "aa", TRUE, c(0, 2, 3))
print(l1)


# names
cat("\nnames\n")
l2 = list("number" = 4, "list" = c(1, 10))
print(l2)
cat("\norder names\n")
names(l2)

# change position
cat("\nchange position\n")
names(l2) <- c("list", "number")
print(l2)

# access elements
cat("\naccess elemente\n")
l3 = list(TRUE, 2, "name" = "Cotrim")
print(l3$name)

# merging list
cat("\nconcat in vector lists\n")
c(list(4,5,6), list(1,2,3))

# list to vector
cat("\nuse function unlist\n")
v1 = unlist(list(1,2,3,"Cotrim"))
print(class(v1))
print(v1)
