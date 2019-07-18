cangrejos <- read.table('data/datacrab.txt', header = TRUE)
cangrejos <- cangrejos[-1]
summary(cangrejos)
by(cangrejos[c('width', 'weight')], cangrejos$color, FUN = summary)
aggregate(cbind(cangrejos$width, cangrejos$weight)~color, cangrejos, FUN = summary)
boxplot(cangrejos$width)
boxplot(cangrejos$weight)
boxplot(cangrejos)

boxplot(cangrejos$width~color, cangrejos)
boxplot(cangrejos$weight~cangrejos$color)
boxplot(cangrejos$weight~cangrejos$color, notch=TRUE)

medias <- by(cangrejos$weight, cangrejos$color, FUN=mean)
mediasV <- c(medias[1], medias[2], medias[3], medias[4])
boxplot(cangrejos$weight~cangrejos$color)
points(mediasV, col='pink', pch=15)

max <- by(cangrejos$weight, cangrejos$color, FUN=max)
maxV <- c(max[1], max[2], max[3], max[4])
points(maxV, col='blue', pch=15)

min3 <- aggregate(cangrejos$weight~color, cangrejos, FUN = min)
points(min3, col='yellow', pch=15)

min2 <- by(cangrejos$weight, cangrejos$color, FUN = min)
minV <- c(min2[1], min2[2], min2[3], min2[4])
points(minV, col='yellow', pch=15)


str(boxplot(cangrejos$weight~cangrejos$color))
boxplot(cangrejos$weight~cangrejos$color)$stats
