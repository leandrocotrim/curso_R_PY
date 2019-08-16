import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from scipy.stats import stats
import sklearn.datasets as datasets
from sklearn.metrics import accuracy_score, confusion_matrix

# pip install pyclustering
from pyclustering.cluster.kmedoids import kmedoids
from pyclustering.cluster import cluster_visualizer


iris = datasets.load_iris()
data = iris.data[:,0:2]
classes = iris.target

# 0:2 -> col 0 and 1
# 3, 12, 20 center of cluster sugest
model_cluster = kmedoids(data, [3, 12, 20])
model_cluster.get_medoids() # [3, 12, 20]
model_cluster.process()

# lists of previsions
previsoes = model_cluster.get_clusters()

# index of medoids find
medoids = model_cluster.get_medoids() # [7, 67, 112]

v = cluster_visualizer()
v.append_clusters(previsoes, data)
v.append_cluster(medoids, data = data, marker='*', markersize=15)
v.show()

n_lst = []
for i in range(len(previsoes)):    
    n_lst.extend([i] * len(previsoes[i]) ) 

confusion_matrix(classes, n_lst)
accuracy_score(classes, n_lst)



