import numpy as np
import pandas as pd
from sklearn.cluster import KMeans
from sklearn import datasets
from sklearn.metrics import confusion_matrix, accuracy_score
from scipy.stats import stats
import matplotlib.pyplot as plt
from collections import Counter


iris = datasets.load_iris()
df_data = iris.data
df_class = iris.target

clusters, values = np.unique(df_class, return_counts = True)
# ou pd.DataFrame({ 'col': df_class })['col'].value_counts()
# ou Counter(df_class)

stats.describe(df_data)

model = KMeans(len(clusters))
model.fit(df_data)

model.cluster_centers_

previsoes = model.labels_

confusion_matrix(df_class, previsoes)

accuracy_score(df_class, previsoes)


plt.scatter(
              df_data[previsoes == 0, 0]
            , df_data[previsoes == 0, 1]
            , c = 'green'
            , label = 'Setosa')

plt.scatter(
              df_data[previsoes == 1, 0]
            , df_data[previsoes == 1, 1]
            , c = 'red'
            , label = 'Versicolor')

plt.scatter(
              df_data[previsoes == 2, 0]
            , df_data[previsoes == 2, 1]
            , c = 'blue'
            , label = 'Virgica')
plt.legend()






