# distribuição normal
from scipy import stats
from scipy.stats import norm
import matplotlib.pyplot as plt

# media = 8 dp = 2, objeto < 6?
norm.cdf(6, 8, 2)

# media = 8 dp = 2, objeto > 6?
norm.sf(6, 8, 2)
# or 
1 - norm.cdf(6, 8, 2)

# media = 8, dp = 2, objeto < 6 ou objeto > 10
norm.cdf(6, 8, 2) + norm.sf(10, 8, 2)

# qual a chance de tirar objeto < 10 e mais que 8
norm.sf(8, 8, 2) - norm.sf(10, 8, 2)
# ou
norm.cdf(10, 8, 2) - norm.cdf(8, 8, 2)

# gerando distribuição normal
x = norm.rvs(size = 100)
x

# visualizando
stats.probplot(x, plot = plt)

# tete de shapiro
stats.shapiro(x)