sexo <- c(rep('Hombre', 6), rep('Mujer', 14))
sample(sexo)
edad <- c(52,25,33,18,28,37,34,59,26,65)
hijos <- sample(1:4,10,replace=TRUE)

df <- data.frame(gender = sample(sexo), age = edad, offsprings = hijos, stringsAsFactors = TRUE)

str(df)


table(sexo) #Frecuencias absolutas
prop.table(table(sexo)) #Frecuencias relativas
100*prop.table(table(sexo)) #Porcentajes
names(which(table(sexo)==6)) #Filtrar por frecuencias absolutas
names(which(prop.table(table(sexo)) >= 0.4)) #Filtrar por frecuencias relativas
names(which(table(sexo)==max(table(sexo)))) #Cual es la moda

table(df$gender)
prop.table(table(df$gender))
names(which(table(df$gender)==max(table(df$gender))))

table(df$age)
prop.table(table(df$age))
names(which(table(df$age)==max(table(df$age))))

#función de la moda:

moda <- function(d){
  names(which(table(d)==max(table(d))))
}
moda(df$gender)

respuestas <- sample(c('Si', 'No'), size = 12, replace = TRUE)
table(respuestas)

sexo <- sample(c('H','M'), size = length(respuestas), replace = T)
table(sexo)
table(respuestas, sexo)
t(table(respuestas, sexo))


table(respuestas, sexo)[2,2] #Para seleccionar por indices. Recuerda lo primero son las filas y lo segundo las columnas
table(respuestas, sexo)['No', 'H'] #Para seleccionar por nombre de filas y nombre de columnas
table(respuestas, sexo)['Si', 1] #Puedes hacer algo mixto
table(respuestas, sexo)['Si', ] #Podemos preguntar por una fila
table(respuestas, sexo)[, 'H'] #Podemos preguntar por una columna


prop.table(table(sexo, respuestas)) #Frecuencia relativa global
prop.table(table(sexo, respuestas), margin = 2) #Frecuencia relativa marginal por respuesta
prop.table(table(sexo, respuestas), margin = 1)#Frecuencia relativa marginal por sexo

library(gmodels)
CrossTable(sexo, respuestas, prop.chisq = FALSE)

df2 <- as.data.frame(cbind(sexo, respuestas))
df2
CrossTable(df2$sexo, df2$respuestas, prop.chisq = FALSE)

library(kableExtra)
library(xtable) #Esto solo funciona con LateX y pdf 
xtable(HairEyeColor[, ,'Hombre'])
