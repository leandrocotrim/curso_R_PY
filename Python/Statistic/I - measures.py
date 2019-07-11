# import pandas as pd
import numpy as np
from scipy import stats
from collections import Counter

# vector of pesos
pesos = [10, 20, 40, 60, 80, 80, 100, 20]

# show legth
len(pesos)

# show mean
np.mean(pesos)

# show median
np.median(pesos)

# show quantiles
np.quantile(pesos, [0, .25, .5, 1])

# show stand desviations
np.std(pesos, ddof = 1) # ddof = 1 for sample

# show max
np.min(pesos)

# show min
np.max(pesos)

# describe
stats.describe(pesos)

# moda
peso_counter = Counter(pesos)
peso_counter

# peso_max = max(peso_counter.values())
# [k for k in peso_counter if peso_counter[k] == 2]

