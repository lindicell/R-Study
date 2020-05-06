
# if
#
x = 101
if (x < 100) 
{
  "Número menor que 100" 
} else   {     # tem que colocar o else aqui senão dá erro de compilação
  "Numero maior que 100"
}

#
# ifelse
#
x = 8
ifelse (x == 8, "oito", NA)

x = 90
ifelse (x == 9, NA, "noventa")

#
# for
#
for (i in 0:10){
  print(i)
}

#
# while
#
x = 2
while (x < 10) {
  x = x + 1
  print(x)
  
}

#
# repeat
#
x = 2
repeat {
  x = x + 3
  if (x > 99) {
    break   
  }
  print (x)
}

#
# rep
#
rep(4,7)
rep("l",3) 
rep(1:4,2) 
rep(c("E","G"),10) 
rep(c("Um","Tres","Seis","Quatro"),c(1,3,6,4))
