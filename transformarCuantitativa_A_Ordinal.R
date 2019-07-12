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
