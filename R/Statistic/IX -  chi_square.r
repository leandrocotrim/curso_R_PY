# usando Qui Quadrado

novela = matrix(c(19,6,43,32) ,nrow = 2, byrow = T)

fix(novela)

rownames(novela) = c('Maculino', 'Feminino')
colnames(novela) = c('Assiste', 'NaoAssiste')

fix(novela)

# Qui Quadrado
chisq.test(novela)

