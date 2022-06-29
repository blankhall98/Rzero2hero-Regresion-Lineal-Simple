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

#grafica 2
g2 <- ggplot(data = clients) + 
  geom_point(aes(x=Age,y=Expenses,col=Sex,size=Salary))

g2

#grafica 3
g3 <- g2 + geom_smooth(aes(x=Age,y=Expenses))

g3

#Regresion Lineal

# modelo1
modelo1 <- lm(data = clients, Expenses ~ Age)

summary(modelo1)

formula_m1 <- function(age){
  return(-1843.6 + age*433.5)
}

# modelo 2
modelo2 <- lm(data = clients, Expenses ~ Age + Sex)

summary(modelo2)

# modelo 3
modelo3 <- lm(data = clients, Expenses ~ Age + Sex + Salary)
summary(modelo3)
