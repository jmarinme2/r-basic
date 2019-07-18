set.seed(162017)
dados <- sample(1:6, 25, replace = TRUE)
dados
set.seed(NULL)

dado.df <- data.frame(Puntuacion = 1:6,
                      Fr.abs = as.vector(table(dados)),
                      Fr.rel = as.vector(round(prop.table(table(dados)),3)),
                      Fr.acu = as.vector(cumsum(table(dados))),
                      Fr.Facu = as.vector(round(cumsum(prop.table(table(dados))),3))
)
dado.df
## Medidades de dispersión:

#Valores máximo y mínimo:
range(dados)
#Rango
diff(range(dados))
#IQR
IQR(dados)
#Varianza muestral
var(dados)
#Desviación típica muestral
sd(dados)
#Varianza poblacional
var(dados)*(length(dados)-1)/length(dados)
#Desviación tipoca poblacional
sd(dados)*(length(dados)-1)/length(dados)
