import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split # pip install sklearn

iris = pd.read_csv('iris.csv')

# print cols
iris.columns

# print rows
iris.index

# head and columns
iris.head()

# counting class
iris['class'].value_counts()

# access value of with matrix
iris.iloc[0:9,[0,2]]

# build iris sample
x, _, y, _ = train_test_split(
                iris.iloc[:, 0:4], # all column, less column class. class is classification
                iris.iloc[:, 4],   # only column class. columns for calssification
                test_size = 0.5,   # poercent relational the population
                stratify = iris.iloc[:, 4] # columns for stratication
        )

# stratify
y.value_counts()

# load dataset infert
infert = pd.read_csv('infert.csv')

# show columns
infert.columns

# infert show
infert.head()

# info
infert.info()

# describe of infert
# d'nt print all columns
infert.describe()

# describe transpose of infert, ~= summary in R
infert.describe().transpose()

# ##

# build infert sample
infert['education'].value_counts()
















