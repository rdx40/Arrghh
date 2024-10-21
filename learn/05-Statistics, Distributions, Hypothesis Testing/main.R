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


##Prob Distributions (normal and binomial)

#normal distribution

#density function
dnorm(3,0,5) #for a std deviation with mean 0 and sd=5 whats the chance of getting teh val 3 we get 6%
dnorm(23,0,5) ##almsot 0 possibility ofgetting 23


#cumulative density
pnorm(3,0,5) #now asking what proprtion of teh data falls below 3 given a mean of 0 and sd of 5
pnorm(1000,0,5)
pnorm(-1000,0,5)
pnorm(0,0,5)


##what val corresponds to whatver percentile in data
qnorm(0.95, 0, 5) 
pnorm(8.224268,0,5)

#genrates vals based on a distrib
gen_vals <- rnorm(10000,0,5) 
mean(gen_vals)
sd(gen_vals)


gen_vals <- rnorm(10,0,5) 
mean(gen_vals)
sd(gen_vals)


#binomail fns
dbinom(10, 100, 0.1) #how likely to get 10 successes when 100 trials done and prob is 10%

dbinom(1, 100, 0.1)
dbinom(9, 100, 0.1)



pbinom(10,100,0.1)##how likely to get a max of successes given a experiment
pbinom(100,100,0.1)
pbinom(1,100,0.1)


#hypothesis testing (is the mean of the sample significantly different from the hypothesised mean od the sample)

gen_vals <- rnorm(1000,0,2)


t.test(gen_vals, mu=0)#looking at this smaple it it possible to get a mean value of 0
#any p val below 0.05 aint good

