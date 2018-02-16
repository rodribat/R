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

# Exercício 6 -Considere a string abaixo. Substitua a palavra textos por frases
str <-c("Expressoes", "regulares", "em linguagem R", "permitem a busca de padroes", "e exploracao de textos","podemos buscar padroes em digitos","como por exemplo","10992451280")

# Exercício 7 -Usando o dataset mtcars, crie um gráficocom ggplot do tipo scatter plot. Use as colunas disp e mpg nos eixos x e y respectivamente# Exercício8 -Usando o exemplo anterior, explore outros tipos de gráficos
