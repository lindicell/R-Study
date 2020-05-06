


str <- c("testando", "expressoes", "regulares", 
         "na", "linguagem","R")

length(str)  # contem 6 posicoes
str

# grep()     # funcao de busca
grep("tes", str, value = t) # busca ex na variavel str e traz as posicoes onde se encontram posicoo 5 e 7
grep("tes", str, ignore.case = t, value = F)  

grep("te", str, value = T)  # traz os textos onde tem a sequencia ex
grep("li", str, ignore.case = T, value = T)

grep("\\d", str, value = F) # mostra posices onde tem digito
grep("\\w", str, value = T) # mesma coisa, mas mostra o texto onde tem digitos

# principais codigos do grep:

# \\d => qualquer digito
# \\D => não tem digito
# \\s => espaco
# \\S => nao tem espaco


# grepl()   # mesma coisa da grep, mas retorna TRUE ou FALSE
grepl("\\d+", str)   # o + significa que ele procura por digito e depois pode ter qualquer sequencia de caracteres
grepl("\\D", str)    


# sub()  # faz a busca e substitui
sub("e", "A", str)  # substitiu em por EM


# gsub()      # faz a busca e substitui
gsub("em", "###", str) 
gsub("ex", "E", str, ignore.case = T) 


str2 <- c("200 e maior que 50 - @?$$$%^",
          "Vamos escrever 1 script em R")

str2
gsub("\\d", "", str2)  # remove os digitos
gsub("\\D", "", str2)  # remove os caracteres
gsub("\\s", "", str2)  # remove os espacos em branco








