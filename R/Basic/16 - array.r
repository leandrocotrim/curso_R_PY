# array is R data object, can store data in more than two dimensions.
# matrix in more dimensions.
# use dim for create array.

cols = c()
rows = c()
for(i in 1:10){
    cols = c(cols, paste("C", i, sep = ""))
    rows = c(rows, paste("R", i, sep = ""))
} 

a = array(1:100, dim = c(10,10,2), dimnames = list(rows, cols, c("M1", "M2")))
# print(a)

# return matrix m1
cat("\nMatrix m1\n")
a[,,1]

# return row1 of m1 and m2
cat("\nRow1 in matrix m1 and m2\n")
a[1,,]

# return row2, col2 in matrices m1 and m2
cat("\nRow2, col2 in matrices m1 and m2\n")
a[2,2,]


# function apply
a = array(1:10, dim = c(5, 2, 3), dimnames = list(c("R1", "R2", "R3", "R4", "R5"), c("C1", "C2"), c("M1", "M2", "M3")))
print(a)

# sum lines the all matrix
cat("\nsum lines the all matrix\n")
apply(a, c(1), sum)

# sum colums the all matrix
cat("\nsum colums the all matrix\n")
apply(a, c(2), sum)

# sum all number the all matrix
cat("\nsum all number the all matrix\n")
apply(a, c(3), sum)
