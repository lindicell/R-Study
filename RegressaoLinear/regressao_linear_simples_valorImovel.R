#
# ML: regressao linear simples
#
setwd("/Users/Lindice/Desktop/R-Study/RegressaoLinear")
#
# Leitura da base de dados e analise

base <- read.csv('nuclear.csv')
View(base)
str(base)


##############################################################
#
# ETAPA: Mineracao de dados 
#
#############################################################

#
# Divisao da base entre treinamento e teste
#
install.packages("caTools")
library(caTools)
set.seed(1)             #gera uma matrix aleatória de dados igual para todos terem os mesmos registros nas bases divididas

divisao <- sample.split(base$date, SplitRatio = 0.70)
base_treinamento <- subset(base, divisao == TRUE)
base_teste <- subset(base, divisao == FALSE)
View(base_treinamento)
View(base_teste)

#
# Geracao do modelo preditivo -> regressao linear simples
#
correlacao <- cor(base$cost, base$date)   # analise de correlação 
correlacao

regressao <- lm(formula = cost ~ date, data = base_treinamento)
regressao

summary(regressao) # possivel ver a acurácia na base de treinamento

plot(base_treinamento$cost ~ base_treinamento$date, xlab = "Data", ylab = "y")
abline(regressao, col = 'blue')
#
# Avaliacao do modelo
#
previsoes <- predict(regressao, newdata = base_teste[6])
View(previsoes)

# diferenca entre o valor real e o calculado para cada linha
diferenca <- abs(base_teste[3] - previsoes)
View(diferenca)

# media de diferenca: pode ser para + ou para -
mean(diferenca$cost)

# acurácia do modelo na base de teste
#install.packages('miscTools')
library(miscTools)
acuracia <- rSquared(base_teste$cost, resid = base_teste$cost - previsoes)
acuracia





