beb_energ <- read.table('C:/Users/Alvaro/Documents/GitHub/r-basic_Rstudio/data/EnergyDrink', header = TRUE)
str(beb_energ)
head(beb_energ)
summary(beb_energ)
apply(beb_energ, MARGIN = 2, FUN = table)

tablas <- apply(beb_energ, MARGIN = 2, FUN = table)
tablas$estudio      
tablas$bebe
tablas$sexo

table(beb_energ$estudio)

table(beb_energ)

table(beb_energ[c(1,2)]) #Hacemos una table de solo algunas columnas del df

ftable(beb_energ) #Tabla de frecuencias absolutas en formato plano
ftable(beb_energ[,1], beb_energ[,3], beb_energ[,2])  #Podemos reordenar la tabla

prop.table(table(beb_energ$estudio, beb_energ$sexo, beb_energ$bebe)) #Tabla de proporciones relativas globales
prop.table(table(beb_energ$estudio, beb_energ$sexo, beb_energ$bebe), margin = 1) #Proporcion relativa por tipo de estudio
prop.table(table(beb_energ$estudio, beb_energ$sexo, beb_energ$bebe), margin = 2) #Proporcion relativa por sexo
prop.table(table(beb_energ$estudio, beb_energ$sexo, beb_energ$bebe), margin = 3) #Proporciones relativas por beber o no

