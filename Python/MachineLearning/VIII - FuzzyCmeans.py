import numpy as np
import pandas as pd
from collections import Counter
from scipy.stats import stats
import matplotlib.pyplot as plt
import sklearn.datasets as datasets
from sklearn.metrics import accuracy_score, confusion_matrix
import skfuzzy # pip install scikit-fuzzy

iris = datasets.load_iris()

# c = número de cluster
# m = grupos que pode pertencer
result = skfuzzy.cmeans(
            iris.data.T
            , c = 3
            , m = 2
            , error = 0.005
            , maxiter=1000
            , init = None
)

previsoes_poc = result[1]

previsoes = previsoes_poc.argmax(axis = 0)
resultados = confusion_matrix(iris.target, previsoes)
