#
# ML: classificacao naive-bayes
#


setwd("/Users/Lindice/Desktop/R-Study/naive_bayes")


# Leitura da base de dados e analise
dados <- read.csv('censo.csv')
View(dados)
str(dados)

table(dados$workclass)
levels(dados$workclass)

table(dados$education)
levels(dados$education)

table(dados$marital.status)
levels(dados$marital.status)

table(dados$occupation)
levels(dados$occupation)

table(dados$relationship)
levels(dados$relationship)

table(dados$race)
levels(dados$race)

table(dados$sex)
levels(dados$sex)

table(dados$native.country)
levels(dados$native.country)

table(dados$income)
levels(dados$income) 

##############################################################
#
# ETAPA: Transformacao
#
#############################################################
# Apagar a coluna X
dados$X <- NULL

# Tratamento dos campos categoricos
dados$workclass <- factor(base$workclass, levels = c(' Federal-gov', ' Local-gov', ' Private', ' Self-emp-inc', ' Self-emp-not-inc', ' State-gov', ' Without-pay'), labels = c(1, 2, 3, 4, 5, 6, 7))
dados$education <- factor(base$education, levels = c(' 10th', ' 11th', ' 12th', ' 1st-4th', ' 5th-6th', ' 7th-8th', ' 9th', ' Assoc-acdm', ' Assoc-voc', ' Bachelors', ' Doctorate', ' HS-grad', ' Masters', ' Preschool', ' Prof-school', ' Some-college'), labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16))
dados$marital.status <- factor(base$marital.status, levels = c(' Divorced', ' Married-AF-spouse', ' Married-civ-spouse', ' Married-spouse-absent', ' Never-married', ' Separated', ' Widowed'), labels = c(1, 2, 3, 4, 5, 6, 7))
dados$occupation <- factor(base$occupation, levels = c(' Adm-clerical', ' Armed-Forces', ' Craft-repair', ' Exec-managerial', ' Farming-fishing', ' Handlers-cleaners', ' Machine-op-inspct', ' Other-service', ' Priv-house-serv', ' Prof-specialty', ' Protective-serv', ' Sales', ' Tech-support', ' Transport-moving'), labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14))
dados$relationship <- factor(base$relationship, levels = c(' Husband', ' Not-in-family', ' Other-relative', ' Own-child', ' Unmarried', ' Wife'), labels = c(1, 2, 3, 4, 5, 6))
dados$race <- factor(base$race, levels = c(' Amer-Indian-Eskimo', ' Asian-Pac-Islander', ' Black', ' Other', ' White'), labels = c(1, 2, 3, 4, 5))
dados$sex <- factor(base$sex, levels = c(' Female', ' Male'), labels = c(0, 1))
dados$native.country <- factor(base$native.country, levels = c(' Cambodia', ' Canada', ' China', ' Columbia', ' Cuba', ' Dominican-Republic', ' Ecuador', ' El-Salvador', ' England', ' France', ' Germany', ' Greece', ' Guatemala', ' Haiti', ' Holand-Netherlands', ' Honduras', ' Hong', ' Hungary', ' India', ' Iran', ' Ireland', ' Italy', ' Jamaica', ' Japan', ' Laos', ' Mexico', ' Nicaragua', ' Outlying-US(Guam-USVI-etc)', ' Peru', ' Philippines', ' Poland', ' Portugal', ' Puerto-Rico', ' Scotland', ' South', ' Taiwan', ' Thailand', ' Trinadad&Tobago', ' United-States', ' Vietnam', ' Yugoslavia'), labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41))
dados$income <- factor(base$income, levels = c(' <=50K', ' >50K'), labels = c(0, 1))

# Escalonamento
dados[, 1] <- scale(base[, 1]) # atributo age
dados[, 3] <- scale(base[, 3]) # atributo final.weight
dados[, 5] <- scale(base[, 5]) # atributo education.num
dados[, 11:13] <- scale(base[, 11:13]) # atributos capital.gain até hour.per.week

##############################################################
#
# ETAPA: Mineracao de dados 
#
#############################################################

#
# Divisao da base entre treinamento e teste
#install.packages("caTools")
library(caTools)
set.seed(1)      #gera uma matrix aleatória de dados igual para todos terem os mesmos registros nas bases divididas

divisao <- sample.split(dados$income, SplitRatio = 0.85)
base_treinamento <- subset(dados, divisao == TRUE)
base_teste <- subset(dados, divisao == FALSE)
View(base_treinamento)
View(base_teste)

#
# Geracao do modelo preditivo -> classificacao naive-bayes
#install.packages("e1071")
library(e1071)
classificador <- naiveBayes(x = base_treinamento[-15], y = base_treinamento$income)
classificador

# Avaliacao do modelo
previsoes <- predict(classificador, newdata = base_teste[-15])
previsoes
matriz_confusao <- table(base_teste[, 15], previsoes)
matriz_confusao

#install.packages("caret")
library(caret)
confusionMatrix(matriz_confusao)