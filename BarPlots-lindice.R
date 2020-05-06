

# Preparando os dados - numero de casamentos em uma igreja de POA
dados <- matrix(c(18,22,21,19,24,33,29,30,60,77,40,67), nrow = 3, byrow = T)
dados

# Nomeando linhas e colunas na matriz
colnames(dados) <- c("0","1-15","15-30",">30")
rownames(dados) <- c("Jovem","Adulto","Idoso")
dados

# Construindo o Barplot
barplot(dados, beside = T)
barplot(dados)


# Construindo o plot - Stacked Bar Plot
# As 3 faixas de idade sao representadas na mesma coluna para as diferentes quantidades
barplot(dados, col = c("deeppink", "gold", "floralwhite"), legend = c("Jovem","Adulto","Idoso"))

# Crie uma legenda para o grafico anterior
legend("topright", pch = 1, col = c("darkseagreen2", "gray18", "deeppink"), legend = c("Jovem","Adulto","Idoso"))

