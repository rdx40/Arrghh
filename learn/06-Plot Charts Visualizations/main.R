##plot takes x and y vectors as i/p and we can add customization options

plot(c(1,2,3,4,5,6),c(10,20,30,40,50,60))

plot(c(1,2,3,4,5,6),c(10,20,30,40,50,60), ylim=c(0,110), xlim=c(0,7))
#points(c(2,5),c(60,10))
#say want color for those two new points
#pch changes the pointer
points(c(2,5),c(60,10), col="red", pch=9)


lines(c(1,5),c(20,80), col='blue', lty=3) #line from 1,20 to 5,80

abline(h = 60, col='purple', lty=1)
abline(v = 6, col='purple', lty=1)


text(2,10,labels=("Omars Coming"))

title("Tis a plot")

legend("topleft",
       legend=c('Original Points','Extra Points','Extra Line','Straight Line'),
       col = c('black','red','blue','purple'),
       pch = c(1, 5, NA, NA),
       lty = c(NA, NA, 2, 1)
)


data(cars)

##plot cars as a scatter plot

plot(cars$speed, cars$dist, pch=19, col='blue', main="Cars", xlab='speed', ylab='distance')





data(faithful)
#a data set on old faithful

#see distrib of waiting time
hist(faithful$waiting, main='faithful', border='green', breaks=20)




data(iris)
species_cnts <- table(iris$Species)
pie(species_cnts, main="Species")


mean_sepal_len = tapply(iris$Sepal.Length, iris$Species, mean)
barplot(mean_sepal_len,
        col=c('red','green','blue'))


boxplot(Sepal.Length ~ Species, data=iris)




data(volcano)
volcano

image(volcano, col=terrain.colors(100))
contour(volcano)
persp(volcano, theta=30, phi=30, shade=0.5)



stripchart(Sepal.Length ~ Species, data=iris)
stripchart(Sepal.Length ~ Species, data=iris, method='jitter')
stripchart(Sepal.Length ~ Species, data=iris, method='jitter', vertical=TRUE)