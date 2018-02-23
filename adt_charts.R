
# load Excel file
install.packages("readxl")
library(readxl)

??readxl
dir()
open_adts <- read_excel("adt_data.xlsx", sheet = 1)
class(open_adts)
attach(open_adts)

# prepate data set
install.packages("tidyr")
library(tidyr)
?tidyr
?separate

install.packages("dplyr")
library(dplyr)
?dplyr
?mutate

install.packages("lubridate")
library(lubridate)
?lubridate

str(open_adts)

open_adts2 <- open_adts %>%
  separate(col = ANO_MES, into = c("ANO", "MES"), sep = 4) %>%
  mutate(ANO_MES = ymd(paste(ANO, MES, "01", sep="-")))

open_adts2


# plot chart
install.packages("ggplot2")
library(ggplot2)
?ggplot
?geom_bar
ggplot(open_adts2) + 
  geom_bar(aes(x=ANO_MES, weight=CV115_Abertas)) +
  xlab("Período") +
  ylab("Quantidade") +
  ggtitle("Auditorias Abertas de Convênio 115")
  #+ labs(title = "Auditorias Abertas de Convênio 115", x = "Período", y = "Quantidade")

ggplot(open_adts2) + 
  geom_bar(aes(x=ANO_MES, weight=CV115_Abertas)) +
  labs(title = "Auditorias Abertas de Convênio 115", x = "Período", y = "Quantidade")

