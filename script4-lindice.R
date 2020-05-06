
#
# Níveis dos fatores
#
numeros <- c(11, 22, 33, 44, 55)
letras <- c('a', 'b', 'c', 'd', 'e')
animais <- c("cachorro", "gato", "peixe", "formiga", "abelha")

# unindo vetores em um dataframe
df <- data.frame(numeros, letras, animais)
df
str(df)

# verificando os levels do fator
levels(df$animais)

# criando nova coluna no df
df$cat1 <- factor(df$animais, labels = c("animal1", "animal3", "animal2"))
df

str(df)

df$cat2 <- factor(df$letras, labels = c( "f", "g", "h"))
df
levels(df$cat2)
summary(df)
