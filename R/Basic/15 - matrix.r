# matrix
# Are objects in R, in format two-dimensional retangular

matrix(1:10, 5, 2)
matrix(1:10, 5, 2, byrow = TRUE)

# change cols and rows names
cols = c("Age", "Count")
rows = c("R1", "R2", "R3", "R4", "R5")
matrix(1:10, 5, 2, byrow = TRUE, dimnames = list(rows, cols))
matrix(1:10, 5, 2, byrow = FALSE, dimnames = list(rows, cols))

# accessing matrix
cols = c('C1','C2','C3')
rows = c('R1','R2','R3','R4')
m1 = matrix(1:12, length(rows), length(cols), dimnames = list(rows, cols))
print(m1)

cat("\nRow1 and Column3\n")
m1[1,3]
cat("\nRow1 and All Columns\n")
m1[1,]
cat("\nAll Rows and Column3\n")
m1[,3]

# Arithmetic matrix

m1 = matrix(1:4, 2, 2)
m2 = matrix(c(40,30,20,10), 2, 2)
print(m1)
print(m2)

# add
cat("\nAdd matrix\n")
m1 + m2

# subtract
cat("\nSubtract matrix\n")
m1 - m2

# multiply
cat("\nMultiply matrix\n")
m1 * m2

# division
cat("\nDivision matrix\n")
m1 / m2
