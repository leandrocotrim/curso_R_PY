# pip install numpy
# pip install pandas

import numpy as np
import pandas as pd

# read dataset iris
iris = pd.read_csv('iris.csv')

# print top 5 data frame
print(iris.head())

# print shape data frame
print(iris.shape)

# build 150 itens between 0 and 1
np.random.random(50)

# build 150 itens only 0 and 1
random_sample = np.random.choice([0, 1], 150, True, [0.5, 0.5])
print(random_sample)

# show count random_sample
print('Total 1')
print(len(random_sample[random_sample == 1]))
print('Total 0')
print(len(random_sample[random_sample == 0]))

print('\nSample iris')
print(iris[random_sample == 1])


