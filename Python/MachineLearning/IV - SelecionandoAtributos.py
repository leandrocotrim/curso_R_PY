import numpy as np
import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split
from sklearn.metrics import confusion_matrix, accuracy_score
from sklearn.ensemble import ExtraTreesClassifier

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
    
forest = ExtraTreesClassifier()
forest.fit(X_train, y_train)

importancia = forest.feature_importances_
df_importancia = pd.DataFrame(
          importancia.reshape((-1,1))
        , index = df_data.columns
        , columns = ['Importance']
)

indexs = df_importancia[df_importancia['Importance'] > 0.062].index

