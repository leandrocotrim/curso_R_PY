import numpy as np
import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import confusion_matrix, accuracy_score

# pip install graphviz
import graphviz
from sklearn.tree import export_graphviz

df_credit = pd.read_csv('Credit.csv', sep = ',')

# df_credit.info()
# df_credit.head()
# df_credit.describe()

df_data = df_credit.drop('class', axis = 1)
df_class = df_credit[['class']]

le = LabelEncoder()
df_data_encoder = df_data.apply(lambda col: le.fit_transform(col))

X_train, X_test, y_train, y_test = \
    train_test_split(df_data_encoder, df_class, test_size = 0.3, random_state = 0)
    
modelo = DecisionTreeClassifier()
modelo.fit(X_train, y_train)

y_pred = modelo.predict(X_test) 

matrix = confusion_matrix(y_test, y_pred)

accuracy_score(y_test, y_pred)
# np.sum(matrix.diagonal()) / np.sum(matrix)

# access webgaphviz
export_graphviz(modelo, out_file= 'tree.dot')

### Em produção

df_novo_credit = pd.read_csv('NovoCredit.csv', sep = ',')
df_novo_data = df_novo_credit.apply(lambda col: le.fit_transform(col))
modelo.predict(df_novo_data)

