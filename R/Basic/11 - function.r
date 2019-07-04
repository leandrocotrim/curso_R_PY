# seq
cat("function seq\n")
print(seq(10,100))

# mean
cat("\n\nfunction mean\n")
print(mean(1:100))

# max
cat("\n\nfunction max\n")
print(max(1:100))

# sum
cat("\n\nfunction sum\n")
print(sum(1:100))

# paste
cat("\n\nfunction paste\n")
print(paste(1:10, " iten(s)"))

# new function
func.cotrim = function(a, b, c = 50) {
    return(a * b * c)
}

cat("\nNew function\n")
print(func.cotrim(2, 2))