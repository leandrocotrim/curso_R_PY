import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression

# load dataset cars
cars = pd.read_csv('cars.csv')

# limpando dataset
cars = cars[['speed','dist']]
# ou
# cars = cars.drop(['Unnamed: 0'], axis = 1)

# head
cars.head()

# describe
cars.describe()

# shape
cars.shape

# correlação
cars.corr()

###

# transformando os dados no formato para sklearn

# coluna que é idenpendente para fazer a previsão
# dist
x = cars.iloc[:, 1].values
x2 = x.reshape(-1, 1)

# coluna a ser prevista
# speed
y = cars.iloc[:, 0].values

# vendo correlação dos vetores
np.corrcoef(x, y)

# instanciando o modelo linear
modelo = LinearRegression()

# treinando o modelo
modelo.fit(x2, y)

# inrececção
modelo.intercept_

# coeficiente do modelo
modelo.coef_

# visualizando os dados e modelo
plt.scatter(x2, y)
plt.plot(
        x2, 
        modelo.predict(x2), 
        color = 'red'
)

### previsão

# para da a 22 pes
modelo.intercept_ + modelo.coef_ * 22
# ou
modelo.predict(np.array([22]).reshape(-1, 1))

# sklearn traz apenas um valor total
# residuais
modelo._residues

# para ver todos os residuos
# pip install yellowbrick
# usar o anaconda...

from yellowbrick.regressor import ResidualsPlot

visualizador = ResidualsPlot(modelo)
visualizador.fit(x2, y)
visualizador.plot()





















