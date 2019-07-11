from math import ceil, floor

# alternativas não são satisfatórias 
[ceil(5.4), round(5.4), floor(5.4)]
[ceil(5.5), round(5.5), floor(5.5)]
[ceil(5.6), round(5.6), floor(5.6)]

# regra da nota
# nota rasgada pela metade vale a parte que tem metade mais um pouco
# a outra parte não tem valor

# 1.4 -> 1
# 1.5 -> 1
# 1.6 -> 2
arrd = lambda n: floor(n) + 1 if n - floor(n) > 0.5 else floor(n)

print(arrd(1.4))
print(arrd(1.5))
print(arrd(1.6))