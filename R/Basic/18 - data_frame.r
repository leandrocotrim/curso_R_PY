# data frame is a table or a two-dimensional array-like structure

# name column non-empty
# name row should be unique
# the data types can be of numeric, factor and character type

df = data.frame(
    age = c(8, 10, 12),
    weight = c(22, 37, 36),
    name = c('Lolo', 'Clara', 'Duda')
)
print(df)

# Add column
cat("\nAdd column\n")
df$school = c('Kimako','Missionario','Paschoal')
df

# Add row
cat("\nAdd row\n")
df2 = data.frame(
    age = c(31),
    weight = c(65),
    name = c('Carol'),
    school = c('Hiroshima')
)

df = rbind(df, df2)
df

# New data frame with two columns
cat("\nNew data frame with two columns\n")
data.frame(df$school, df$name)

# Access
cat("\nAccess\n\n")

cat("\nColumn 1\n")
df[,1]

cat("\nRow 1\n")
df[1,]

cat("\nRow 1 and 2 and All Column\n")
df[c(1,2),]

# count row
cat("\nCount Row\n")
nrow(iris)

# count col
cat("\nCount Col\n")
ncol(iris)