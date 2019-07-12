# AirPassengers
summary(AirPassengers)

# primeira linha e primeira coluna
start(AirPassengers)

# ultima linha e ultima coluna
end(AirPassengers)

# plotando para entender a tabela
plot(AirPassengers)

# agragar por ano e não mes e ano
# perde efeito sazonal
plot(aggregate(AirPassengers))

# agregar por mês
monthplot(AirPassengers)

# parte da serie
y = window(AirPassengers, c(1960, 1), c(1960, 12))
plot(y)




