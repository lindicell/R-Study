
#
# Criando listas
#
list_caracter = list("l", "m","n")
list_caracter
list_caracter1 = list(c("L", "M"), "l", "m")
list_caracter1
list_caracter2 = list(matrix(c("L", "M", "N","O", "P", "Q"), nr = 3), "l", "m")
list_caracter2

#
# Listas compostas
# Criando a lista com componentes, mas sem nomear as dimensões
#
lista_composta <- list(c(1:10), c("Ola","tudo", "bem?"), rnorm(10)) #distribuição normal
lista_composta

?rnorm

#
# Fatiamento da lista
#
list_caracter[3] # mostra os elementos da dimensão 3
list_caracter1[[2]] [1] # mostra o elemento 1 da dimensão 2 observe o duplo [] na dimensão
list_caracter1[[3]] [4] # mostra o elemento 4 da dimensão 3
list_caracter1[[2]] [4] = "Profe" # acrescentei o elemento profe no vetor de nomes
list_caracter1[[2]] [4]
list_caracter1[2]

#
# colocando nome nas dimensões
#
names(list_caracter1) <- c("Inteiros", "Nomes", "Numeros")
list_caracter1
list_caracter1["Inteiros"]
list_caracter1["Nomes"]

#
# Criando lista já com as dimensões nomeadas
#
vet_num = 1:6
vet_carac = c("e", "f", "g")
list_caracter1 = list(numeros = vet_num, letras = vet_carac)
list_caracter1

#
# Criando lista com elementos e dimensão nomeada
#
lista_caracter3 = list(numeros = 1:8, caracteres = c("e", "f", "j"))
lista_caracter3

#
# outra forma de manipular as dimensões
#
list_caracter1$Inteiros # mostra toda a dimensão
list_caracter1$Nomes[4] # mostra o elemento 4 da dimensão 4
length(list_caracter1$Inteiros)  
length(list_caracter1)  # mostra 3 que é a quantidade de dimensões da lista

#
# combinando listas
#
lista4 <- c(list_caracter, list_caracter1)
lista4
lista4["Numeros"]
lista4["numeros"]
lista4[4]

#
# convertendo um vetor em lista
#
vetor = c(1:6)      # vetor com 1 2 3 4 5 6
vetor
lista = as.list(vetor)  # distribui cada elemento em uma dimensão
lista
