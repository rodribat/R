# Exerc�cio 1 -Crie um vetor com 12 n�meros inteiros
v <- seq(1,12)

# Exerc�cio 2 -Crie uma matriz com 4 linhas e 4 colunas preenchida com n�meros inteiros
m <- matrix(seq(1,16),4,4,byrow=1)

# Exerc�cio 3 -Crie uma lista unindo o vetor e matriz criados anteriormente
l <- list(v, m)

# Exerc�cio 4 -Usando a fun��o read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.da
t <- read.table("http://data.princeton.edu/wws509/datasets/effort.dat")

# Exerc�cio 5 -Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")
names(t) <- c("config","esfc","chang")

# Exerc�cio 6 -Imprima na tela o dataframe iris, verifique quantas dimens�es existem no dataframe iris, imprima um resumo do dataset.
?iris
iris
length(iris) #numero de dimensoes
summary(iris)

# Exerc�cio 7 -Crie um plot simples usando as duas primeiras colunas do dataframe iris
plot(iris$Sepal.Length, iris$Sepal.Widht)

# Exerc�cio 8 -Usando s fun��o subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a fun��o subset()
?subset()
subset(iris, Sepal.Length > 7)

# Exerc�cios 9 -Crie um dataframe que seja c�pia do dataframe iris e usando a fun��o slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: voc� vai ter que instalar e carregar o pacote dplyr
# Dica 2: consulte o help para aprender como usar a fun��o slice()
install.packages("dplyr")
library("dplyr")
?slice

# Exerc�cios 10 -Use a fun��o filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: use o RSiteSearch()para aprender como usar a fun��o filter