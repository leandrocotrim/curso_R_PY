import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.linear_model import LogisticRegression

# read data set
eleicao = pd.read_csv('Eleicao.csv', sep=';')

# plot
plt.scatter(eleicao.DESPESAS, eleicao.SITUACAO)

# decribe
eleicao.describe()

# correlação
np.corrcoef(eleicao.DESPESAS, eleicao.SITUACAO)
# ou
eleicao[['DESPESAS','SITUACAO']].corr()

# variaveis
X = eleicao.iloc[:, 2].values
X = X[:, np.newaxis]
y = eleicao.iloc[:, 1].values

# modelo
modelo = LogisticRegression()
modelo.fit(X, y)

modelo.coef_
modelo.intercept_

# plot
X_test = np.linspace(X.min(), X.max(), 100)
def sigmoid(x):
    return 1 / (1 + np.exp(-x))

r = sigmoid(X_test * modelo.coef_ + modelo.intercept_).ravel()
plt.plot(X_test, r, color = 'red')

# previsão
novos_candidatos = pd.read_csv('NovosCandidatos.csv', sep=';')
previsao = modelo.predict(novos_candidatos[['DESPESAS']])
novos_candidatos['previsao'] = previsao





