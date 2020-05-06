

#
# Utilizando R Datasets Package - instalados ao instalar o R
# Utilizaremos em alguns exemplos da sequência didática
#
# carrega o pacote de datasets
library(datasets)
# visualiza os datasets do pacote
library(help = "datasets")

#
# Plot Basico
#
x = 3:6
y = 8:11
plot(x,y)


altura <- c(155, 156, 157, 158, 159)
largura <- c(61, 62, 63, 64, 65)

plot(altura, largura)
plot(altura, largura, type = "p", pch = 8)
plot(altura, largura, xlab = "Altura", ylab = "Largura")
plot(altura, largura, xlab = "Altura", ylab = "Largura", col = 'red', col.main = 52, cex.main = 1.5)




#
# Plotando um Dataframe
#
# dataset lynx - Do R Datasets Package
#
?lynx # Numeros anuais de armadilhas para linces de 1821 a 1934
View(lynx)

plot(lynx) # Detalhe! nao funciona com todos os dataframes
plot(lynx, ylab = "Qtde Armadilhas", xlab = "Anos")
plot(lynx, main = "Plots com Dataframes", col = 'red')
plot(lynx, main = "Plots com Dataframes", col = 'red', col.main = 52, cex.main = 1.5, ylab = "Qtde Armadilhas", xlab = "Anos")

# eh possível navegar na area de plotagem e ver os gráficos anteriores

#
# trabalhando com o dataset warpbreaks- Do R Datasets Package
# 
#
# Histograma: distribuição de frequencias
#
?warpbreaks #O numero de quebras no fio durante a tecelagem
View(warpbreaks)
hist(warpbreaks$breaks)


w <- c(6,7,7,7,7,7,8,8,8,9,9,9,9,6)       # histograma trabalha com valor a esquerda intervalo aberto
hist(w)                                   # valor a direita intervalor fechado
hist(w, breaks = 0:6, include.lowest = F) # o segundo e terceiro parâmetros quebram o paddrão do histograma
# de acrescentar o primeiro valor do vetor na primeira classe

# observe a diferença entre os dois gráficos: 

#
# trabalhando com o dataset airquality - Do R Datasets Package
# 
#
# boxplot
#
?airquality # medicoes da qualidade do ar New York
View(airquality)
boxplot(Ozone ~ Day, airquality, xlab = "Month", ylab = "Ozone (ppb)")


# Especificando os parametros para plot, hist, boxplot

# col - cor dos pontos
# lty - tipo de linha
# lwd - largura de linha
# type - definicao dos pontos => "p" - "l" - "b" - "o" - "c" - "n"
# pch - simbolo no plot => 0..6 - 7..14 - 15..17 - ou qq caracter entre ""
# xlab - label do eixo x
# ylab - label do eixo y
# bg - background color

# Exemplo
x = 2:10
plot(x, pch = "*")


# Funcoes Basicas de Plot

# plot() - scatterplots - gráficos de dispersao
# funcoes terao acao sobre o ultimo grafico plotado - funcoes usam a logica da gramatica dos graficos
#
# lines() -  adiciona linhas ao grafico
# points() - adiciona pontos ao grafico
# text() - adiciona label ao grafico
# title() - adiciona titulo ao grafico

altura <- c(155, 156, 157, 158, 159)
largura <- c(61, 62, 63, 64, 65)

plot(altura, largura)
# acao no grafico que esta ativo na area de plotagem
lines(altura,largura)
points(150:160,50:60)
text(130,60,"Altura X Largura")
title("Grafico com camadas")


# Cores disponiveis para usar em graficos
colors()


# Salvando os graficos

# como png 
#
png("Grafico1.png", width = 600, height = 500, res = 70)

# como png ou pdf
#
pdf("Grafico2.pdf")
plot(iris$Sepal.Length, iris$Petal.Length,
     col = iris$Species,
     main = "Curso de R")

dev.off()

#
View(iris) #dataset de especies de flores

#
# Plots a partir de datasets
#
df <- read.csv('pibpercap.csv')
df_1982 <- subset(df, ano == 1952)
plot(df_1952$expectativa ~ df_1952$pibpercap, data = df_1952)
View(df)



