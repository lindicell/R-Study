# Criando factor
#
vetanimais <- c("Cachorro", "Gato", "Gato", "Cachorro", "Gato")
vetanimais
fac_vetanimais <- factor(vetanimais)
fac_vetanimais
class(vetanimais)
class(fac_vetanimais)


# Variáveis categóricas nominais
# Não existe uma ordem implícita
#
felinos <- c("Leao", "Pantera", "Tigre", "Onça", "Gato")
felinos
class(felinos)
fac_animais <- factor(felinos)
fac_animais
class(felinos)
class(fac_animais)
levels(fac_animais)

# Variáveis categóricas ordinais
# Possuem uma ordem natural
#
ensino <- c("Fundamental", "Medio", "Bacharelado", "Fundamental", "Fundamental")
ensino
fac_grad <- factor (ensino, order = T, levels = c( "Bacharelado", "Fundamental", "Medio"))
fac_grad
levels(fac_grad)

#
# sumarizar os dados
#
summary(fac_grad)
summary(ensino)

#
# 
#
simenao <- c("S", "S", "N", "N", "N", "N", "S","N","S","S","N", "N","S","S","S")
simenao
fac_vet2 <- factor(simenao)
fac_vet2
levels(fac_vet2) <- c("Sim", "Não")
fac_vet2
summary(fac_vet2)
summary(simenao)

#
# Mais exemplos, utilizando variáveis quantitativas ao invés de categóricas
#
dias = c(5,6,7,7,7,5,6,6,5,5,6,7,5)
fdias = factor(dias)
fdias

#
# 
#
rnum = factor(data, labels = c("IV", "V", "XV"))
rnum

#
# Fatores não ordenados
#
estados <- c("RS", "SP", "SP", "RJ", "RS", "RS", "SP", "RJ", "SP")
estados
f.set1 <- factor(estados) # f.set1 é o nome do objeto que pode conter o .
f.set1
class(f.set1)
is.ordered(f.set1)

# agora dando ordenação
o.estados <- factor(estados, 
                 levels = c("RS", "SP", "RJ"), 
                 ordered = T)
o.estados
is.ordered(o.estados)
as.numeric(o.estados)
table(o.estados)


#
# fatores e dataframes 
#
df <- read.csv2("etnias.csv", sep = ',')
df

View(df)

str(df)
levels(df$Peso)
levels(df$Etnia)
summary(df$Peso)

#
# criar um plot
#
plot(df$Peso~df$Etnia, xlab = 'Etnia', ylab = 'Peso', main = 'Peso por Etnia')

#
# regressão
#
summary(lm(df$pESO~df$Etnia, data = df))

#
# transformando uma variável numérica para categórica
# estado civil é numérica, mas representa categoria
#
str(df)
df$Cores.Cat <- factor(df$Estado_Civil, labels = c( "Branco", "Preto", "Azul"))
str(df)
df