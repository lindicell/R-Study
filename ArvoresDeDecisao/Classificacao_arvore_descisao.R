#
# ML: classificacao arvore de decisao
#
setwd("/Users/Lindice/Desktop/R-Study/ArvoresDeDecisao")
#
# Leitura da base de dados e analise
base <- read.csv('censo.csv')
View(base)
str(base)

table(base$age)
levels(base$age)

table(base$capital.gain)
levels(base$capital.gain)

table(base$capital.loos)
levels(base$capital.loos)

table(base$hour.per.week)
levels(base$hour.per.week)

table(base$income)
levels(base$income)



##############################################################
#
# ETAPA: Transformacao
#
#############################################################
#
# Apagar a coluna X
base$X <- NULL

# Tratamento dos campos categoricos
base$workclass <- factor(base$workclass, levels = c(' Federal-gov', ' Local-gov', ' Private', ' Self-emp-inc', ' Self-emp-not-inc', ' State-gov', ' Without-pay'), labels = c(1, 2, 3, 4, 5, 6, 7))
base$education <- factor(base$education, levels = c(' 10th', ' 11th', ' 12th', ' 1st-4th', ' 5th-6th', ' 7th-8th', ' 9th', ' Assoc-acdm', ' Assoc-voc', ' Bachelors', ' Doctorate', ' HS-grad', ' Masters', ' Preschool', ' Prof-school', ' Some-college'), labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16))
base$marital.status <- factor(base$marital.status, levels = c(' Divorced', ' Married-AF-spouse', ' Married-civ-spouse', ' Married-spouse-absent', ' Never-married', ' Separated', ' Widowed'), labels = c(1, 2, 3, 4, 5, 6, 7))
base$occupation <- factor(base$occupation, levels = c(' Adm-clerical', ' Armed-Forces', ' Craft-repair', ' Exec-managerial', ' Farming-fishing', ' Handlers-cleaners', ' Machine-op-inspct', ' Other-service', ' Priv-house-serv', ' Prof-specialty', ' Protective-serv', ' Sales', ' Tech-support', ' Transport-moving'), labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14))
base$relationship <- factor(base$relationship, levels = c(' Husband', ' Not-in-family', ' Other-relative', ' Own-child', ' Unmarried', ' Wife'), labels = c(1, 2, 3, 4, 5, 6))
base$race <- factor(base$race, levels = c(' Amer-Indian-Eskimo', ' Asian-Pac-Islander', ' Black', ' Other', ' White'), labels = c(1, 2, 3, 4, 5))
base$sex <- factor(base$sex, levels = c(' Female', ' Male'), labels = c(0, 1))
base$native.country <- factor(base$native.country, levels = c(' Cambodia', ' Canada', ' China', ' Columbia', ' Cuba', ' Dominican-Republic', ' Ecuador', ' El-Salvador', ' England', ' France', ' Germany', ' Greece', ' Guatemala', ' Haiti', ' Holand-Netherlands', ' Honduras', ' Hong', ' Hungary', ' India', ' Iran', ' Ireland', ' Italy', ' Jamaica', ' Japan', ' Laos', ' Mexico', ' Nicaragua', ' Outlying-US(Guam-USVI-etc)', ' Peru', ' Philippines', ' Poland', ' Portugal', ' Puerto-Rico', ' Scotland', ' South', ' Taiwan', ' Thailand', ' Trinadad&Tobago', ' United-States', ' Vietnam', ' Yugoslavia'), labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41))
base$income <- factor(base$income, levels = c(' <=50K', ' >50K'), labels = c(0, 1))


# Escalonamento
base[, 1] <- scale(base[, 1]) # atributo age
base[, 3] <- scale(base[, 3]) # atributo final.weight
base[, 5] <- scale(base[, 5]) # atributo education.num
base[, 11:13] <- scale(base[, 11:13]) # atributos capital.gain até hour.per.week


##############################################################
#
# ETAPA: Mineracao de dados 
#
#############################################################

#
# Divisao da base entre treinamento e teste
#install.packages("caTools")
library(caTools)
set.seed(1)  #gera uma matrix aleatória de dados igual para todos terem os mesmos registros nas bases divididas

divisao <- sample.split(base$income, SplitRatio = 0.85)
base_treinamento <- subset(base, divisao == TRUE)
base_teste <- subset(base, divisao == FALSE)
View(base_treinamento)
View(base_teste)

#
# Geracao do modelo preditivo -> classificacao arvore de decisao
#install.packages("rpart")
#install.packages("rpart.plot")
library(rpart)
library(rpart.plot)
classificador <- rpart(formula = income ~ ., data = base_treinamento)
classificador
rpart.plot(classificador)

# Avaliacao do modelo
previsoes <- predict(classificador, newdata = base_teste[-10])  #faz a previsao em probalibilidade
previsoes
previsoes <- predict(classificador, newdata = base_teste[-10], type = 'class')  #faz a previsao com a classe
previsoes

matriz_confusao <- table(base_teste[, 10], previsoes)
matriz_confusao

#install.packages("caret")
library(caret)
confusionMatrix(matriz_confusao)