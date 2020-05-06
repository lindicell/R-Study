
# 1)Setar o seu diretório de trabalho
setwd("/Users/Lindice/Documents/trabalho-lindice")

# 2)Verificar o seu diretório de trabalho.
getwd()

# 3)Carregar os dados do dataset para uma variável do tipo dataframe.
df<-data.frame()
df <-read.csv2("HCV-Egy-Data.csv",sep=",")

# 4)Visualizar o dataframe carregado, de modo a poder visualizar todas as variáveis e elementos.

View(df)

# 5)Quantas variáveis foram carregadas sendo do tipo factor?Quais são? 
str(df)
RBC <- factor(df$RBC)
Plat <- factor(df$Plat)
ALT4 <- factor(df$ALT4)

# 6)Mostrar os levels das variáveis do tipo factorque forram carregadas.

levels(RBC)
levels(Plat)
levels(ALT4)


# 7)Para a variável Age: mostrar a média, a maior e a menor idade.

min(df$Age)
max(df$Age)
mean(df$Age)

# 8)Criar3 subsets: 
# a.Contendo todos os elementos com sexo == 1;
# b.Contendo todos os elementos com sexo ==2;
# c.Contendo todos os elementos com náuseaVomito == 1 e febre==2 e dorCabeça == 1

ElementosSexo1 <- subset(df,Gender==1)
ElementosSexo2 <- subset(df,Gender==2)
NV <- subset(df,Nausea.Vomting==1 && Headache == 1)

# 9)Mostrar o conteúdodos 3 subsets criados noexercício anterior.

View(ElementosSexo1)
View(ElementosSexo2)
View(NV)

# 10)Crie um histograma para a coluna de índiceMassaCorporal –BMI.
# O seu histograma não deve acrescentar o primeiro valor davariável na   
# primeira   classe. DICA! O comando table(colunadodataframe)contabiliza
# as ocorrências  por  classe  para  conferir  os  valores  no gráfico.

hist(df$BMI,breaks = 20:35, include.lowest = F)

# 11)Crie  um  barplot para a coluna de Estadiamento 
# histológico(Baselinehistological.staging). 

tab <-table(df$Baselinehistological.staging)
barplot(tab,beside = T)



