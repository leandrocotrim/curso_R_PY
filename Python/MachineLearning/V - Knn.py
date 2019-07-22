import numpy as np
import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split
from sklearn.metrics import confusion_matrix, accuracy_score
from sklearn.neighbors import KNeighborsClassifier
from sklearn import datasets
from scipy import stats

iris = datasets.load_iris()

stats.describe(iris.data)

df_data = iris.data
df_class = iris.target

X_train, X_test, y_train, y_test = \
    train_test_split(df_data, df_class, test_size = 0.3, random_state = 0)


modelo = KNeighborsClassifier()
modelo.fit(X_train, y_train)
y_pred = modelo.predict(X_test)

confusao = confusion_matrix(y_test, y_pred)
accuracy = accuracy_score(y_test, y_pred)



