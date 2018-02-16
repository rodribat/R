# Exercício 1 -Crie um vetor com 12 números inteiros
v <- seq(1,12)

# Exercício 2 -Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros
m <- matrix(seq(1,16),4,4,byrow=1)

# Exercício 3 -Crie uma lista unindo o vetor e matriz criados anteriormente
l <- list(v, m)

# Exercício 4 -Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.da
t <- read.table("http://data.princeton.edu/wws509/datasets/effort.dat")

# Exercício 5 -Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")
names(t) <- c("config","esfc","chang")

# Exercício 6 -Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris, imprima um resumo do dataset.
?iris
iris
length(iris) #numero de dimensoes
summary(iris)

# Exercício 7 -Crie um plot simples usando as duas primeiras colunas do dataframe iris
plot(iris$Sepal.Length, iris$Sepal.Widht)

# Exercício 8 -Usando s função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()
?subset()
subset(iris, Sepal.Length > 7)

# Exercícios 9 -Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: você vai ter que instalar e carregar o pacote dplyr
# Dica 2: consulte o help para aprender como usar a função slice()
install.packages("dplyr")
library("dplyr")
?slice

# Exercícios 10 -Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: use o RSiteSearch()para aprender como usar a função filter