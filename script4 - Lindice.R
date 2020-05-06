#Tipos de dados

#Numerico

numero <- 5
numero
mode(numero)
typeof(numero)
class(numero)

numero1 <- 12.5
numero1
mode(numero1)
typeof(numero1)
class(numero1)

#Inteiro

is.integer(numero)
k  = as.integer(numero)
k
class(k)
mode(k)
typeof(k)


as.integer(7.8)
as.integer(TRUE)
as.integer("Lindice")

#Caracter

char = 'L'
char
typeof(char)
mode(char)


char1 = 'Analista'
char1
mode(char1)
typeof(char1)

char2 = c("Analise", "De", "Dados")
char2
mode(char2)
typeof(char2)

#Logica
a = 2 ; b=5
z = a > b
z
mode(z)
typeof(z)

u = TRUE; f = FALSE
class(u)
u & f
u | f
!u 

# Operações com zero
10/0
16/0
'lindice'/10
0/0

#numero complexo

variavel <- c(24,NA,56,78,90)


z <- 3 + 3i
mode(z)
typeof(z)
class(z)
