import numpy as np
import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split
from sklearn.metrics import confusion_matrix, accuracy_score
from sklearn.ensemble import RandomForestClassifier
from sklearn import datasets
from scipy import stats

df_credit = pd.read_csv('Credit.csv')

stats.describe(df_credit)

le = LabelEncoder()

df_data = df_credit.drop('class' , axis = 1).apply(lambda col: le.fit_transform(col))
df_class = df_credit[['class']]

X_train, X_test, y_train, y_test = \
    train_test_split(df_data, df_class, test_size = 0.3, random_state = 0)


modelo = RandomForestClassifier(n_estimators=100)
modelo.fit(X_train, y_train)
y_pred = modelo.predict(X_test)

confusao = confusion_matrix(y_test, y_pred)
accuracy = accuracy_score(y_test, y_pred)




