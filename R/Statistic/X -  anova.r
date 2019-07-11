# anova

tratamento = read.csv(file.choose(), sep=';')
# tratamento = read.csv('anova.csv, sep=';')
fix(tratamento)

# correlação não funciona com variavel n numerica
boxplot(tratamento$Horas ~ tratamento$Remedio)
table(tratamento$Horas, tratamento$Remedio)

# funcão aov com 2 variaveis
an = aov(Horas ~ Remedio, data=tratamento)
an

# summary
summary(an)

###

# funcão aov com 3 variaveis
an2 = aov(Horas ~ Remedio * Sexo, data=tratamento)
an2

# summary
summary(an2)


### 

# tukey
tukey = TukeyHSD(an)
tukey 

# plot
plot(tukey)
