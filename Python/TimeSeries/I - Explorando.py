import pandas as pd
from datetime import datetime
import matplotlib.pyplot as plt

dateparse = lambda dates: pd.datetime.strptime(dates, '%Y-%m')

AirPassagers = pd.read_csv('AirPassengers.csv', sep=',',
                           parse_dates = ['Month'],
                           index_col = 'Month',
                           date_parser = dateparse)

AirPassagers.head()
AirPassagers.info()
AirPassagers.index

# dataframe busca em index data
AirPassagers.loc['1949-02']
AirPassagers.loc[datetime(1949, 2, 1)]
AirPassagers.loc['1950-07-01':'1951-03-01']
AirPassagers.loc[:'1951-07-01']
AirPassagers.loc['1950']

# Serie busca em index data
ts = AirPassagers['#Passengers']
ts['1949-02']
ts[datetime(1949, 2, 1)]
ts['1950-07-01':'1951-03-01']
ts[:'1951-07-01']
ts['1950']

ts.index.min()
ts.index.max()

plt.plot(ts)

# ts.groupby(lambda x: x.year).sum()
ts_ano = ts.resample('Y').sum()
plt.plot(ts_ano)

# ts.resample('m').sum()
ts_mes = ts.groupby(lambda x: x.month).sum()
plt.plot(ts_mes)


plt.plot(ts['1960-01-01':'1960-12-01'])









### Modo 2

dateparse = lambda dates: pd.datetime.strptime(dates, '%Y-%m')

AirPassagers = pd.read_csv('AirPassengers.csv', sep=',')

AirPassagers.head()
AirPassagers.info()

AirPassagers['Date'] = AirPassagers['Month'].apply(dateparse)

AirPassagers.head()
AirPassagers.info()

AirPassagers['Year'] = AirPassagers['Date'].apply(lambda dt: dt.year)
AirPassagers['Month'] = AirPassagers['Date'].apply(lambda dt: dt.month)

AirPassagers.head()

AirPassagers.drop('Date', axis=1, inplace=True)

AirPassagers.head()

AirPassagers = pd.pivot_table(AirPassagers, ['#Passengers'], ['Year'], ['Month'])
                                             
AirPassagers.head()
AirPassagers.shape
AirPassagers.columns
AirPassagers.index

