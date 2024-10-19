#value <- seq(from=10, to=50, by=10 )
value <- c(10,20,30,40,50,60)
value

mean(value)
median(value)
sd(value)
var(value)

summary(value) #kinda lke pd.secribe

IQR(value)
quantile(value)
summary(iris)

table(value)
table(iris$Species)


##coorelation and covarience

#in corelation if 0->no relationship -1->what one variable does is opposite of the other 1-->same feature
cor(iris$Sepal.Length, iris$Sepal.Width)




###Examples  

study_hours <- c(10,20,30,40,50)
blood_pressure <- c(120,130,140,150,160)
cor(study_hours, blood_pressure)
cov(study_hours, blood_pressure)

study_hours <- c(10,11,10,11,9,11)
blood_pressure <- c(120,121,120,121,119,121)
cor(study_hours, blood_pressure)
cov(study_hours, blood_pressure)


