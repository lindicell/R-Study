# o número de dados deve dar certo com as linhas definidas
#
matrix(c(10,20,30,40), nrow = 2)
matrix(c(11,12,13,14,15,16), nrow = 2)
matrix(c(111,222,333,444,555,666), nrow = 6)

# Criando matrizes com número de colunas
matrix(c(7, 8, 9, 10, 15, 16), ncol = 6)


# Da erro pois a posiçao fica vazia!
matrix(c(4,2,6,9,10), nc = 2)


# Criando matriz e preenchendo por linhas

dados <- c(1:100)
matrix(data = dados, nr = 10, nc = 2, byrow = T) # preenche pela linha
matrix(data = dados, nr = 2, nc = 2)            # preenche pela coluna

# Fatiando a matriz
#
matriz <- matrix(c(20,33,45,58), nr = 2)
matriz[1,2] #mostra o elemento armazenado na linha 1 coluna 2
matriz[1,3] #erro out of bounds => não tem coluna 3
matriz[,2]  #mostra todas os elementos da coluna 2
matriz[2,]  #mostra todos os elementos da linha 2

# Matriz diagonal -> preenche tudo com zero menos a diagonal principal
#
matriz = 1:4 # criou o vetor com os elementos 1, 2, 3 e 4
diag(matriz) # coloca o vetor na diagonal principal e o resto preenche com zero

vetor = diag(matriz) # criou uma matriz com a diag(matriz)
diag(vetor)          # extraiu a diagonal principal


# Operações com matrizes
#
matriz <- matrix(c(11,22,33,44), nr = 2 )
matriz
matriz1 <- matrix(c(55,66,77,88), nr = 2)
matriz1
matriz * matriz1
matriz + matriz1
matriz - matriz1

#
# Multiplicando vetor com matriz
#
a <- c(1:6)
a
b = matrix(c(2,3,4,5,6,1), nr = 2)
w = a * b

#
# Nomeando a matriz -> nomear as colunas do vetor usa a função names
# Nomear a matriz usa-se a dimnames
#
matriz2 = matrix (c("Azul", "Rosa", "Verde", "Amarelo"), nr = 2)
matriz2
dimnames(matriz2) = list( c("Linha1", "Linha2"), c("Coluna1", "Coluna2"))
matriz2[ , "Coluna1"]

matriz1 <- matrix( c(1,2,3,4), nr= 2, nc = 2, dimnames = list( c("Linha1", "Linha2"), c ("Coluna1", "Coluna2")))

?matrix

#
# Combinando matrizes
#
matriz3 = matrix(c(6,7,4,8), nr = 2)
matriz3
matriz4 = matrix(c(1,7,2,9), nr = 2)
matriz4
rbind(matriz3, matriz4) # concatena matriz por Row - linha -> acrescenta a mat5 abaixo da mat4
cbind(matriz3, matriz4) # concatena matriz por Column - coluna -> acrescenta a mat5 ao lado da mat4

#
# apresentando a matriz como vetor
#
vetorQueEraMatriz = c(matriz4)
vetorQueEraMatriz
