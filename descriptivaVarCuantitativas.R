edad = c(15,18,25,40,30,29,56,40,13,27,42,23,11,26,25,32,30,40,33,29)

#tabla de frecuencias absolutas
table(edad) 

#tabla de frecuencias relativas
round(prop.table(table(edad)), 3) 

#tabla de acumuladas absoluta y relativa
cumsum(table(edad)) 
cumsum(prop.table(table(edad)))


#Ejemplo de analisis de frecuencias
set.seed(162017)
dados <- sample(1:6, 25, replace = TRUE)
dados
set.seed(NULL)

#Frecuencias absoluta y relativas
table(dados)
round(prop.table(table(dados)), 3)
#Frecuencias acumuladas absoluta y relativa
cumsum(table(dados))
round(cumsum(prop.table(table(dados))), 2)

#Para acumular la información en un solo objeto creamos un dataframe con toda la información
dados.df <- data.frame(Puntuación = 1:6,
                       Fr.abs = as.vector(table(dados)), #si no lo tranformamos en un vector y lo introducimos como una tabla unidimensional tabién se nos añadirian el nombre de las columnas y tendríamos una tabla con el doble de columnas
                       Fr.rel = as.vector(round(prop.table(table(dados)), 2)),
                       Fr.acu = as.vector(cumsum(table(dados))),
                       Fr.racu = as.vector(round(cumsum(prop.table(table(dados))), 2)))
dados.df

#para calcular la media y mediana:
mean(dados)
median(dados)
mean(edad)
median(edad)

#para la moda es algo especial
as.numeric(names(which(table(dados) == max(table(dados))))) #Si no pusieramos asw.numeric nos devolvería un string y al trabajar con datos numericos nos interesa que nos devuelva un número
as.numeric(names(which(table(edad) == max(table(edad)))))

#Medias ir al Rmarkdown

#Cuantiles

set.seed(260798)
dado <- sample(1:4, 50, replace = TRUE)
set.seed(NULL)
length(dado)
dado <- sort(dado)
dado

dado.df <- data.frame(Puntuacion = 1:4,
                      Fr.abs = as.vector(table(dado)),
                      Fr.rel = as.vector(round(prop.table(table(dado)),3)),
                      Fr.acu = as.vector(cumsum(table(dado))),
                      Fr.Facu = as.vector(round(cumsum(prop.table(table(dado))),3))
)
dado.df

#Si nos pide el cuartil Q0.3, sabemos que este es el primer elemento de la lista cuya frecuencia relativa acumulada es mayor o igual a 0.3 En este caso se corresponde con el 1.

#También lo puedo hacer por indices:
#Como tengo el vector ordenado y el Q0.3 significa el 30%, por lo tanto calculo cual es le 30% de este caso:
dado[round(length(dado)*.73/1,0)]
dado[37]
quantile(dado, 0.5)
