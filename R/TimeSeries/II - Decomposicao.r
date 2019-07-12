dec = decompose(AirPassengers)

# data
dec$x

# efeito sazonal
dec$seasonal
plot(dec$seasonal)

# tendencia(subida ou descida)
dec$trend
plot(dec$trend)

# aleatórios
dec$random
plot(dec$random)

###

# todos juntos
plot(dec)






