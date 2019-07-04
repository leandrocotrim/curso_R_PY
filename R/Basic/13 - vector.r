# are basic data in R
# accept, string, integer, double complex, logical, character and raw

# function c
cat("\nfunction c\n")
v1 = c(5,6,8,9,0,2,34,66,788)
print(v1)

# function seq
cat("\nfunction seq\n")
seq(5, 9, by=0.4)

# accessing
v1[c(1, 2, 3)]
v1[c(-2, -5)] # return all, less index
v1[c(1, 0, 1, 0, 1)] # return index 1, index 1 and index 1

# reciclyng
v1 = 1:10
v1[c(TRUE, FALSE, TRUE)] # c(TRUE, FALSE, TRUE) ==> c(TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, ...)
v1 + c(10, 20) # c(10, 20) ==> c(10, 20, 10, 20, ...)

# sort
cat("\nsort\n")
v1 = c(300, 10, 555, 22)
print(v1)
sort(v1)
sort(v1, decreasing = TRUE)


# arithmetic
vector = c(1,3,3,4,5)
vector2 = 3:7

print('Exibindo vetores')
vector
vector2

cat('\nOperação simples em vetores\n')
vector + 50
vector * 2
vector ^ 3

cat('\nOperação entre vetores\n')
vector + vector2
vector * vector2
vector / vector2

# vector length different
v1 = 1:10 # size 10
v2 = 1:5 # size 5

v1
v2
v1*v2