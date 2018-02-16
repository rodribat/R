# Exercício 1 -Crie uma função que receba e vetores como parâmetro, converta-os em um dataframe e imprima
create_dataframe <- function(...) {
  df <- data.frame(cbind(...))
  print(df)
}
create_dataframe(c(1,2,3,4), c("a","b","c","d"), c(5,6,7,8))

# Exercício 2 -Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros e calcule a media de cada linha
m <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), 4, byrow=T)
avg <- apply(m, 1, mean)
print(avg)

# Exercício 3 -Considere o dataframe abaixo. Calcule a media por disciplina
escola <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                     Matemática = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Química = c(76, 56, 89, 90, 100, 87))

course_avg <- apply(escola[, c(2,3,4)], 2, mean)
print(course_avg)

# Exercício 4 -Cria uma lista com 3 elementos, todos numéricos e calcule a soma de todos os elementos da lista
elems <- list(1, 3.5, 7)
s <- sapply(elems, sum)
print(sum(s))

# Exercício 5 -Transforme a lista anterior um vetor
l <- list(A=1, B=3.5, C=7)
v1 = unlist(l)
print(v1)

v2 = sapply(l, function(x) x)
print(v2)


# Exercício 6 -Considere a string abaixo. Substitua a palavra textos por frases
str <- c("Expressoes", "regulares", "em linguagem R", "permitem a busca de padroes", "e exploracao de textos","podemos buscar padroes em digitos","como por exemplo","10992451280")

n <- gsub("textos", "frases", "Muitos Textos são escritos.", ignore.case = TRUE)

?lapply
str2 <- lapply(str, function(x) gsub("textos", "frases", x))


# Exercício 7 -Usando o dataset mtcars, crie um gráfico com ggplot do tipo scatter plot. Use as colunas disp e mpg nos eixos x e y respectivamente
install.packages("ggplot2")
library(ggplot2)

?ggplot
?mtcars
ggplot(mtcars) +
  geom_point(aes(disp, mpg))

# Exercício8 -Usando o exemplo anterior, explore outros tipos de gráficos
library(ggplot2)
ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point(shape = 1) +
  geom_smooth(method = lm, color = "red", se = TRUE)
  #se to display confidence interval around smooth

?mtcars
head(mtcars)
ggplot(mtcars, aes(x = disp, y = mpg, colour = as.factor(am))) + geom_point()

ggplot(mtcars, aes(x = as.factor(cyl), y = mpg, colour = as.factor(cyl))) + geom_boxplot()

ggplot(mtcars, aes(x = mpg), binwidth = 30) + geom_histogram(colour = "blue", fill = "yellow")

ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + geom_bar() + xlab("Cilindros") + ylab("Frequência") + ylim(c(0,15)) + labs(fill = "Cilindros") + theme(legend.position = "top")

ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + geom_bar() + xlab("Cilindros") + ylab("Frequência") + ylim(c(0,15)) + labs(fill = "Cilindros") + theme(legend.position = "bottom") + facet_grid(.~am)
       