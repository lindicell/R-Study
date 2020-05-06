
#
# funções built-in
#
abs(-62)
sum(c(2:7)) #somatorio
mean(c(1:10)) #media
round(5.3459) #arredondamento
rev(c(1:8)) # inverte os valores
sort(c(9:1)) # do menor para o maior
seq(1:4) #sequencia 
median(c(6,8,22,5,12)) #mediana
var(c(1:6)) #variância
sd(c(1:10)) #desvio padrão


#
#
#
vec1 <- c(10.5, 2.5, 88.4, 34.7, 61.3)
vec2 <- rev(sort(vec1))
vec2

#
# funções dentro de funções
#
mean(c(abs(vec1), abs(vec2)))

#
# criando funções
#
myfunc <- function(x) {
  x * x
}
myfunc(50)

#

myfunc2 <- function(a, b) {
  valor = a ^ b
  print(valor)
}
myfunc2(3,4)

#
# funções com número variado de parâmetros
#
vec1 <- (10:11)
vec2 <- c("f", "g", "h", "i")
vec3 <- c(6.6, 9.1, 11.6, 5.2)

myfunc3 <- function (x, ...){
  if (x == 2)
  {
    print (cbind(...)) # combina objetos R em linhas e colunas
  }
  if (x == 3)
  {
    print ("parâmetro 3")
  }
}
myfunc3(2, vec1, vec2, vec3)
myfunc3(3)
myfunc3(2,vec1, vec3)
