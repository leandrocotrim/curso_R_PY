# media 75, amostra 9, dp 10
# como são 9, grau de liberdade � 9 - 1 = 8
# valor de t => 1,5 esse valor � calculado...
# pode se usar o valor de t e o grau de liberdade para achar na tabela a probabilidade

# probabilidade da hora ser menor que 80
# hora salario < 80
pt(1.5, 8)

# probabilidade da hora ser maior que 80
pt(1.5, 8, lower.tail = F)
# ou
1 - pt(1.5, 8)
