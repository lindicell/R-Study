#
# Trabalhando com Arquivos txt
#
setwd("C:/Faculdade/CienciaDados/Aula9")
getwd()

# Importando arquivo txt com read.table()
?read.table

df1 <- read.table("pedidos.txt") 
df1
dim(df1) # 6 linhas e 1 coluna
#
# observe que todas as informacoes foram colocadas em uma unica coluna
# observe que o cabecalho é uma linha do dataframe
#
# sera que vc queria isso?
#

df2 <- read.table("pedidos1.txt", header = TRUE, sep = ',')
df2
dim(df2) # 5 linnhas e 3 colunas

#
#nomeando as colunas
#
df3 <- read.table("pedidos.txt", header = TRUE, sep = ',', 
                  col.names = c("var1", "var2", "var3", "var4"))
df3

#
# trabalhando com fatores
#
df4 <- read.table("pedidos1.txt", header = TRUE, sep = ',', 
                  col.names = c("var1", "var2", "var3","var4","var5","var6"))
df4
str(df4) #estrutura do objeto df4 => observe os fatores


# Por padrao o R importa:
#            string como fator
#            numero como numero

# para mudar a importacao de string como fator, usa-se o parametro stringsAsFactors = F

df5 <- read.table("pedidos1.txt", header = TRUE, sep = ',', 
                  col.names = c("var1", "var2", "var3","var4","var5","var6"), stringsAsFactors = F)
df5
str(df5)
#
# mas talvez a variavel CPF deve-se ser factor, então vamos converte-la
#
df5$var4 <- factor(df5$var5)
str(df5)

# mas talvez a variavel Sexo deve-se ser factor, então vamos converte-la
#
df5$var4 <- factor(df5$var4)
str(df5)

#
# Importando arquivo com read.csv() e read.csv2()
# 
#
# read.csv ja carrega os campos em colunas separadas
df1_read <- read.csv("pedidos.txt")  
df1_read
dim(df1_read)

#read.csv2 carrega tudo em 1 coluna
df2_read <- read.csv2("pedidos.txt")
df2_read
dim(df2_read)

#read.csv2 com o parâmetro sep carrega em colunas separadas
df3_read <- read.csv2("pedidos.txt", sep = ',')
df3_read
dim(df3_read)

#
# Importando arquivo com read.delim()
#
#carrega tudo em 1 coluna
df1_delim <- read.delim("pedidos.txt")
df1_delim
dim(df1_delim)

# read.delim com o parâmetro sep carrega em colunas separadas
df2_delim <- read.delim("pedidos.txt", sep = ',')
df2_delim
dim(df2_delim)


# Exportando

#Gerando arquivo
#Orange => dataset do R
View(Orange)
write.table(Orange, file = 'orange.txt')
dir()


df_orange <- read.table("orange.txt")
df_orange
