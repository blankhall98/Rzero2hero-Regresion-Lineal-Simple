# IMPORTAMOS LIBRERIAS SUPER PADES
library(readr)
library(ggplot2)

# LEEMOS LA BASE DE DATOS CLIENTS
clients <- read_csv("data/clients.csv")
View(clients)

# ¿QUE TIENE MI BASE?
summary(clients)

# cambiamos tipo de dato a factor en columna sex
clients$Sex <- as.factor(clients$Sex)

# asi se ve mi nueva base
summary(clients)

# grafica 1
g1 <- ggplot(data = clients) +
  geom_boxplot(aes(x=Sex,y=Expenses))

g1
