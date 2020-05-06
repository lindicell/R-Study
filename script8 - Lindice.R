
#
#  Criando um data.frame vazio
#
data <- data.frame()
class(data)
data

#
# Criando vetores para depois preencher o data.frame
#
nomes <- character()
idades <- numeric()
itens <- numeric()
codigos <- integer()

df <- data.frame(c(nomes, idades, itens, codigos))
df

#
# criando um data.frame a partir dos vetores.... uso da função c ou sem conforme este exemplo
#
pais = c("Brasil", "Portugal", "China", "Australia")
nome = c("Lindice", "Ana", "Gabriel", "Jose")
altura = c(1.60, 1.70, 1.80, 1.90)
codigo = c(1, 2, 3, 4)

pesquisa = data.frame(pais, nome, altura, codigo)
pesquisa
pesquisa[ ,1]

#
# adicionando um novo vetor ao data.frame já existente
#
cor_olhos = c("verde", "azul", "castanho", "preto")
pesquisa = cbind(pesquisa, cor_olhos)
pesquisa

#
# Informações sobre o data.frame
#
str(pesquisa) # resumo sobre o data.frame
dim(pesquisa) # saída 4 5 (4 linhas e 5 colunas)
length(pesquisa)

#
# Obtendo o vetor de um data.frame
#
pesquisa$nome
pesquisa$pais

#
# Extraindo um único valor
#
pesquisa[1,1] # mostra Brasil linha 1 coluna 1 E mostra também os níveis porque é tipo factor
pesquisa[3,2]

#
# numero de linhas e colunas do data.frame
#
nrow(pesquisa)
ncol(pesquisa)

#
# Primeiros e últimos elementos do data.frame
#
head(pesquisa) # retorna as 5 primeiras linhas do data.frame
tail(pesquisa) # retorna as 5 últimas linas do data.frame

#
# Filtro para o data.frame
#
# Antes da vírgula restrição na linha e depois da vírgula restrição de coluna
#
pesquisa[codigo == 4,c("nome", "altura")] 

#
# Data.frame nomeado
#
names(pesquisa) <- c("País", "Nome", "Altura", "Código", "Olhos")
pesquisa

colnames(pesquisa) <- c("Var 1", "Var 2", "Vare 3", "Var 4", "Var 5")
rownames(pesquisa) <- c("Obs 1", "Obs 2", "Obs 3", "Obs 4")
pesquisa
