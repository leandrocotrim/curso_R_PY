import pandas as pd
import matplotlib.pyplot as plt

dateparse = lambda dates: pd.datetime.strptime(dates, '%Y-%m')

AirPassagers = pd.read_csv('AirPassengers.csv', sep=',',
                           parse_dates = ['Month'],
                           index_col = 'Month',
                           date_parser = dateparse)


ts = AirPassagers['#Passengers']
                  
# media da amostra
ts.mean()

# media do ano de 1960
# ts['1960'].mean()
# ts[str(ts.index.max().year)].mean()
ts['1960-01-01':'1960-12-01'].mean()

# media movel
# calcular a media com 11 meses antes + o atual
mv = ts.rolling(window = 12).mean()
ts[0:12].mean()
ts[1:13].mean() 
# ....

# traz a média do mês anterior + o atual
# ts.rolling(window = 2).mean()

# traz a media dele mesmo
# ts.rolling(window = 1).mean()

plt.plot(ts) # dados como são
plt.plot(mv, color = 'red') # media movel

###

# previsão - forecast

previsoes = []
for i in range(1, 13):
    superior = len(mv) - i
    inferior = superior - 11
    previsoes.append(mv[inferior:superior].mean())
    
previsoes = previsoes[::-1]
plt.plot(previsoes)
    

####

# Arima
from statsmodels.tsa.arima_model import ARIMA

plt.plot(ts)

# p, q, d
modelo = ARIMA(ts, order=(2, 1, 2))
modelo_treinado = modelo.fit()

modelo_treinado.summary()

# tuple
previsoes = modelo_treinado.forecast(steps = 12)

prev_prox_12_meses = previsoes[0]

eixo = ts.plot()
modelo_treinado.plot_predict(
        '1960-01-01', '1962-01-01',
        ax = eixo, plot_insample = True)


###

# arima 2???
# incompleto não instala
# aula 91
from pyramid.arima import auto_arima























    












