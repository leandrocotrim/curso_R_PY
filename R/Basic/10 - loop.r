# for
cat("for\n")
for(v in 1:10) {
    if(v %% 2 == 0) next
    print(v) # only odd
}

# while
cat("\nwhile\n")
count = 0
while(1 == 1){
    count = count + 1
    if(count == 5) break
}
print(count)

# repeat
cat("\nrepeat\n")
count = 4
repeat {
    count = count - 1
    cat("repeat ", toString(count), "\n")
    if(count <= 0) break
}