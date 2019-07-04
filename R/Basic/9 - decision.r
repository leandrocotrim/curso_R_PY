# if, else if, else
v1 = 5
if (v1 == 5) {
  print("if")
} else if (v1 == 2) {
  # } else if
  print("elseif")
} else {
  # } else
  print("else")
}

cat("if, else if, else\n\n")

# function ifelse
v1 = ifelse(TRUE, 1, 2)
print(v1)
cat("function ifelse\n\n")

#switch
v1 = 5
v2 = switch(v1, "Value1", "Value2", "Value3", "Value4", "Value5", "Value6")
cat("v2 = ", v2, "\n\n")

# Values trues and falses
v1 = c(TRUE, FALSE, 1, -1, -2, 0, 2L)

for (v in v1) {
  print(v)
  if (v) cat("True value\n")
  else cat("False value\n")
}

