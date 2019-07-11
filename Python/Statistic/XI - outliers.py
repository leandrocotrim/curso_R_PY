# outliers
import pandas as pd
import matplotlib.pyplot as plt

iris = pd.read_csv('iris.csv', sep=',')

iris.columns

# com outliers
plt.boxplot(iris.iloc[:,1])

#sem outliers
plt.boxplot(iris.iloc[:,1], showfliers=False)

# pegando valores na gambiarra
iris[( iris['sepal width'] > 4 ) | ( iris['sepal width'] < 2.1 )]['sepal width'].values

###

# pip install pyod
from pyod.models.knn import KNN

modelo = KNN()
modelo.fit(iris.iloc[:,1].values.reshape(-1, 1))

outliersKNN = iris.iloc[modelo.labels_ == 1]

outliers_values = outliersKNN['sepal width'].values
