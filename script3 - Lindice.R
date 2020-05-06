#criando variavel


variavel = 10
variavel
mode(variavel) #Identifica qual tipo da Variavel (Numerica)
sqrt(variavel) #Raiz quadrada do numero

# Atribuindo uma variável na outra

variavel1 = variavel
mode(variavel1)
typeof(variavel1) 

#Cria um Vetor
variavel2 = c("Morango", "Maracuja", "Uva")
variavel2
mode(variavel2)

#Funçao

variavel3 = function(t) {t*5}
variavel3
mode(variavel3)

#Cria uma variavel a partir de outra existente
variavel4 = as.character(variavel) #Muda a variavel para caracter
variavel4
mode(variavel4)

# Variações de atribuições

k <- c(10,11,12)
k
c(10,11,12) -> w
w
assign("k", c(-4,8.5,9))
k
k[1]



