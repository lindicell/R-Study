#
# ML: regressao linear multipla
#
setwd("/Users/Lindice/Desktop/R-Study/RegressaoLinear")
#
# Leitura da base de dados e analise
base <- read.csv('nuclear.csv')
View(base)
str(base)


##############################################################
#
# ETAPA: Transformacao
#
#############################################################

# Apagar a colunas X, bw, pt, pr

base$X <- NULL
base$bw <- NULL
base$pt <- NULL
base$pr <- NULL
#base$sqft_basement <- NULL # observar o summary antes de executar esta linha

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

divisao <- sample.split(base$cost, SplitRatio = 0.70)
base_treinamento <- subset(base, divisao == TRUE)
base_teste <- subset(base, divisao == FALSE)
View(base_treinamento)
View(base_teste)

#
# Geracao do modelo preditivo -> regressao linear múltipla
#
regressor <- lm(formula = cost ~ ., data = base_treinamento)
summary(regressor)


#
# Avaliacao do modelo
#
previsoes <- predict(regressor, newdata = base_teste[-1])
View(previsoes)


# diferenca entre o valor real e o calculado para cada linha
diferenca <- abs(base_teste$cost - previsoes)
View(diferenca)

# media de diferenca: pode ser para + ou para -
mean(diferenca)

# acurácia do modelo na base de teste
install.packages('miscTools')
library(miscTools)
acuracia <- rSquared(base_teste$cost, resid = base_teste$cost - previsoes)
acuracia