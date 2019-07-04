str1 = "com aspas duplas"
str2 = 'com aspas simples'
str3 = "com aspas no 'meio'"
str3 = 'com aspas no "meio"'

# for concat use the function paste
cat("paste(\"1\", \"2\", \" 3 \") \n")
paste("1", "2", " 3 ")
paste("1", "2", " 3 ", sep = "-")
paste("1", "2", " 3 ", sep = "", collapse = "")

# format
cat("\nformat\n")
format(23.12345, digits = 6) # d'nt show 5
format(c(1.8, 9.99), scientific = TRUE)
format(55, nsmall = 5)
format(13.8, width=8)

# count
cat("\nnchar('cotrim') \n")
nchar('cotrim')

# use for vector
cat("\nlength('cotrim') \n")
length("cotrim")

# toupper and tolower functions
cat("\ntoupper() and tolower()\n")
toupper("Leandro")
tolower("COtrim")

# substring
cat("\nsubstring\n")
substring("Leandro", 0, 2)
substring("Leandro", 5)
