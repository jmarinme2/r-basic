invierno <- read.csv(url("http://winterolympicsmedals.com/medals.csv"))
nrow(invierno)
nrow(invierno[invierno$Medal=='Gold',])
nrow(invierno[invierno$Medal=='Silver',])
nrow(invierno[invierno$Medal=='Bronze',])

str(invierno)

nrow(invierno[invierno$Event.gender=='M',])
nrow(invierno[invierno$Event.gender=='W',])

invierno$Year <- as.factor(invierno$Year)
summary(invierno$Year)

df <- rbind(invierno[invierno$Year == 1960,], invierno[invierno$Year == 1996,])
summary(df$NOC)

summary(invierno$Medal)
