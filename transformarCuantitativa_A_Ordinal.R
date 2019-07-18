crabs <- read.table('data/datacrab.txt', header = TRUE)
crabs <- crabs[-1]
head(crabs)
str(crabs)

#Creamos los intervalos
intervalos <- cut(crabs$width, breaks = c(21,25,29,33,Inf), right = FALSE,
                  labels = c('21-25', '25-29', '29-33', '33-...'))


#Como nos interesa que tenga un orden se lo indicamos
crabs$width <- ordered(intervalos)
str(crabs)

#Tabla de frecuencias absolutas Bidimensional

table(crabs[,c('color', 'width')])
table(crabs[,c(1,3)]) #Es lo mismo pero llamando por indice de columna

#Tabla de frec relativas bidimensional
round(prop.table(table(crabs[,c('color', 'width')])),3)

#Tabla de frecuencias relativas por filas
fRel <- round(prop.table(table(crabs[,c('color', 'width')]), margin = 1),3)

#Tabla de frecuencias relativas por columnas
round(prop.table(table(crabs[,c('color', 'width')]), margin = 2),3)

#Tabla de frecuencias relativas acumuladas por filas 
frelAc <- t(round(apply(prop.table(table(crabs[, c('color', 'width')]), margin = 1), MARGIN = 1, FUN = cumsum),3))

#Barplots
colores <- c('cyan', 'cyan4','cyan1', 'cyan2')
barplot(t(fRel), col = colores, main = 'Barplot de frecuencias \n relativas segun colores', 
        legend = TRUE, ylim = c(0,1), beside = TRUE,
        args.legend = list(x ='topright', cex=0.55))

barplot(t(frelAc), col = colores, main = 'Barplot de frecuencias \n relativas acumuladas segun colores', 
        legend = TRUE, ylim = c(0,1), beside = TRUE,
        args.legend = list(x ='topright', cex=0.55))
