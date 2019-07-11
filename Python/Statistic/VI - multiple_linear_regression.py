import numpy as np
import pandas as pd
import matplotlib.pylab as plt
from sklearn.linear_model import LinearRegression
import statsmodels.formula.api as sm

mtcars = pd.read_csv('mt_cars.csv')
mtcars.drop('Unnamed: 0', axis = 1, inplace=True)
# ou
# mtcars = mtcars.drop('Unnamed: 0', axis = 1)
# ou
# mtcars = mtcars.iloc[:,1:11]

# show columns
mtcars.columns

# head
mtcars.head()

# colhendo os dados em array

# mpg
mpg = mtcars.iloc[:, 0].values # array 1 dimensão
# hp = mtcars[['mpg']].values # array 2 dimensões

# cyl
cyl = mtcars.iloc[:, 1].values # array 1 dimensão
# cyl = mtcars[['mpg']].values # array 2 dimensões

# disp
disp = mtcars.iloc[:, 2].values # array 1 dimensão
# disp = mtcars[['disp']].values # array 2 dimensões

# hp
hp = mtcars.iloc[:, 3].values # array 1 dimensão
# hp = mtcars[['hp']].values # array 2 dimensões

# relação entre as colunas
mtcars[['mpg','disp']].corr()
np.corrcoef(disp, mpg)


### Regressão linear simples
modelo = LinearRegression()
modelo.fit(disp.reshape(-1, 1), mpg)
modelo.intercept_
modelo.coef_

# r * r -> r square
modelo.score(disp.reshape(-1, 1), mpg)

# r * r -> r square ajustado
previsoes = modelo.predict(disp.reshape(-1, 1))
modelo_ajustado = sm.ols(formula = 'mpg ~ disp', data = mtcars)
modelo_treinado = modelo_ajustado.fit()
modelo_treinado.summary()

# plot
plt.scatter(disp.reshape(-1, 1), mpg)
plt.plot(disp.reshape(-1, 1), previsoes, color = 'red')

# predict
modelo.predict(np.array(200).reshape(-1, 1))


### Regressão linear multipla
mtcars[['mpg','cyl','disp','hp']].corr()

# pegando os dados
X1 = mtcars.iloc[:, 1:4].values
y1 = mtcars.iloc[:, 0].values
# ou
# X1 = mtcars[['disp','cyl','hp']]
# y1 = mtcars[['mpg']]

modelo2 = LinearRegression()
modelo2.fit(X1, y1)

modelo2.score(X1, y1)
modelo_ajustado2 = sm.ols(formula = 'mpg ~ cyl + disp + hp', data = mtcars)
modelo_treinado2 = modelo_ajustado2.fit()
modelo_treinado2.summary()

predict = np.array([4, 200, 100]).reshape(1, -1) # array de colunas

modelo2.predict(predict)






