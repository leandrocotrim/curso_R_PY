import pandas as pd
from datetime import datetime
import matplotlib.pyplot as plt
from statsmodels.tsa.seasonal import seasonal_decompose

dateparse = lambda dates: pd.datetime.strptime(dates, '%Y-%m')

AirPassagers = pd.read_csv('AirPassengers.csv', sep=',',
                           parse_dates = ['Month'],
                           index_col = 'Month',
                           date_parser = dateparse)

AirPassagers.head()
AirPassagers.info()
AirPassagers.index

ts = AirPassagers['#Passengers']

plt.plot(ts)

###

dec = seasonal_decompose(ts)
tend = dec.trend
sazonal = dec.seasonal
aleatorio = dec.resid

plt.plot(sazonal)
plt.plot(tend)
plt.plot(aleatorio)

###

plt.subplot(4, 1, 1)
plt.plot(ts, label = 'Original')
plt.legend(loc = 'best')

plt.subplot(4, 1, 2)
plt.plot(sazonal, label = 'Sazonalidade')
plt.legend(loc = 'best')

plt.subplot(4, 1, 3)
plt.plot(tend, label = 'Tendência')
plt.legend(loc = 'best')

plt.subplot(4, 1, 4)
plt.plot(aleatorio, label = 'Aleatoriedade')
plt.legend(loc = 'best')
plt.tight_layout()


