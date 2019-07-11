import pandas as pd
from scipy import stats
import statsmodels.api as sm
from statsmodels.formula.api import ols
from statsmodels.stats.multicomp import MultiComparison

# horas que o remedio demora para fazer efeito
# em pessoas do sexo masculino e feminino
# 3 tipos de remedio, A, B, C

tratamento = pd.read_csv('anova.csv', sep=';')
tratamento.head()

tratamento.boxplot(by = 'Remedio', grid = False)

modelo = ols('Horas ~ Remedio', tratamento).fit()
resultado = sm.stats.anova_lm(modelo)

modelo2 = ols('Horas ~ Remedio * Sexo', tratamento).fit()
resultado2 = sm.stats.anova_lm(modelo2)

mc = MultiComparison(tratamento['Horas'], tratamento['Remedio'])
resultado_mc = mc.tukeyhsd()
print(resultado_mc)
resultado_mc.plot_simultaneous()

