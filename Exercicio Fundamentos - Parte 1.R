#Exerc�cio 1
v <- seq(1,12)

#Exerc�cio 2
m <- matrix(seq(1,16),4,4,byrow=1)

#Exerc�cio 3
l <- list(v, m)

#Exerc�cio 4
t <- read.table("http://data.princeton.edu/wws509/datasets/effort.dat")

#Exerc�cio 5
names(t) <- c("config","esfc","chang")

#Exerc�cio 6
?iris
iris
length(iris) #numero de dimensoes
summary(iris)

#Exercicio 7
plot(iris$Sepal.Length, iris$Sepal.Widht)

#Exercicio 8
?subset()
subset(iris, Sepal.Length > 7)

#Exercicio 9
install.packages("dplyr")
library("dplyr")
?slice

#Exercicio 10