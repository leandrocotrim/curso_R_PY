# previsão com media da amostra não é legal
AirPassengers
mean(AirPassengers) # 280

# media do ano de 1960
mean(window(AirPassengers, c(1960, 1), c(1960, 12))) #476

### para fazer forecast
# install.packages('forecast')
library(forecast)

# 2 meses
# 1 no começo fica NA e 1 no final 
ma(AirPassengers, order = 2)

#  mes(es)
# se passar 1 ele calcula a media do proprio mes retornando os mesmos dados
ma(AirPassengers, order = 1)

# 12 - meses para calcular a media
# 6 no começo ficam NA e 6 no final
mediamovel = ma(AirPassengers, order = 12)

previsao = forecast(mediamovel, h = 12)

# media movelm por ser media faz suavização no grafico
plot(previsao)

###

arima = auto.arima(AirPassengers)
previsao2 = forecast(arima, h = 12)

# por se arima e não media não há suavização
plot(previsao2)






