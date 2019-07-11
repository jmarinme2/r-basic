beb_energ <- read.table('C:/Users/Alvaro/Documents/GitHub/r-basic_Rstudio/data/EnergyDrink', header = TRUE)

barplot(table(beb_energ$sexo), col = c('blue', 'pink'), main = 'Diagrama de barras de las frecuencias absolutas \n para el sexo en el df bebidas energéticas')
barplot(prop.table(table(beb_energ$estudio)), col = c('red', 'blue', 'lightblue', 'yellow'), main = 'Frecuencias relativas \n del tipo de estudio' )
barplot(prop.table(table(beb_energ$estudio)), width = 0.5, col = c('red', 'blue', 'lightblue', 'yellow'), horiz = TRUE,
        main = 'Frecuencias relativas \n del tipo de estudio', legend.text = TRUE )

#Podemos aplicarlo a una tabla bidimensional
barplot(table(beb_energ$sexo, beb_energ$bebe), legend.text = TRUE, col= c('Yellow', 'Blue')) #Aparecen la barras apiladas
barplot(table(beb_energ$sexo, beb_energ$bebe), legend.text = TRUE, beside = TRUE) #En vez de apiladas aparecen al lado
barplot(table(beb_energ$sexo, beb_energ$bebe), names = c('Negativo', 'Afirmativo'), col= c('Yellow', 'Blue'),
        legend.text = c('Men', 'Women'), beside = TRUE)

#Grafico de mosaico

plot(table(beb_energ$sexo, beb_energ$bebe), main ='Grafico mosaico', col=c('red', 'blue'), xlab = 'Sexo', ylab = 'Bebida energetica')

     