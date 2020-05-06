
# Criando as fatias
fatias <- c(66, 6, 66)

# Nomeando os labels
paises <- c("Russia", "China", "França")

# Unindo paises e fatia
paises <- paste(paises, fatias)

# Incluindo mais detalhes no label
paises <- paste(paises, "%")


# Construindo o grafico de pizza
pie(fatias, labels = paises,
    col = c("hotpink", "gainsboro", "lemonchiffon4"), 
    main ="Distribuicao de Vendas")



# 3D
install.packages("plotrix")
library(plotrix)

pie3D(fatias, labels = paises, explode = 0.05,
      col = c("greenyellow", "mediumpurple2", "tan3"), 
      main = "Dsitribuicao de Vendas")


