#Vetores de Strings

vetor_palavra = c("Internet", "Computador", "Ciencia")
vetor_palavra

# Vetor de floats 
vetor_float = c(1.2, 3.4, 5.6)
vetor_float

#Vetor numero complexos
vetor_comple = c(7.6+2i, 4.5+8i)
vetor_comple

# Vetor de valores lógicos 
vetor_logico = c(TRUE,FALSE,FALSE,TRUE)
vetor_logico

# Vetor de numeros inteiros 
vetor_inteiros = c(1,2,3,4,5,6)
vetor_inteiros

# Utilizando função SEQ 
vetor = seq(1:5)
vetor
is.vector(vetor)

# Utilizando função REP

vetor = rep(2:9)
vetor
is.vector(vetor)

# Combinando vetores
a = c(1,2,4)
b = c("f","g","h")
c (a,b)


# operções com vetores
a = c(1,2,4)
b = c(7,9,8)

a + 3
b + 4
a * b
a + b
a / b


# Somando vetores com número de elementos diferentes
par = c(2, 4, 6, 8)
impar = c(1, 3, 5, 7,9)
par + impar

# Nomeando as colunas do vetor

vet = c("Lindice", "Lopes")
vet
names(vet) = c("Nome", "Sobrenome")
vet
vet["Sobrenome"]

#  array
arr <- array (2:4, dim = c (6,6,6))
arr


