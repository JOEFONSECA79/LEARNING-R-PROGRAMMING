# Coursera R Week 4
#Structure - Simulation - Random Sampling - R Profiler



# str | Structure
# What's in this object, compactly display lists, 1 line of output

str(str)

str(lm)

str(ls)

x <- rnorm(100, 2, 4)

summary(x)

str(x)

f <- gl(40,10)

str(f)

summary(f)   # Nbr of elements in the data

library(datasets)
head(airquality)

str(airquality)    # quick examination of data and structure of objects



m <- matrix(rnorm(100), 10, 10)

str(m)

m[,1]    # print out the column


s <- split(airquality, airquality$Month)

str(s)    # list that displays 5 data frames one for each month
# Summary / quick look at the data
# One of the most useful functions in R to review the object





# Simulation - Generating Random Numbers

x <- rnorm(10)
x


x <- rnorm(10, 20, 2)
x

summary(x)
str(x)



set.seed(1)
rnorm(5)

rnorm(5)    # distint list


set.seed(1)    # resets to original random normal dist
rnorm(5)



# Poisson Random Numbers

rpois(10,1)

rpois(10,2)


ppois(2, 2)    #Cumulative distribution of the integers, # Probility Pr(x <=2 )

ppois(4, 2)    # Probility Pr(x <=4 )

ppois(6, 2)    #Ingeter gest closer to mean # Probility Pr(x <=6 )



# Simulating a Linear Model, Creating Random Data and Plotting

set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)

plot(x, y)






set.seed(10)
x <- rbinom(100, 1, 0.5)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)

plot(x, y)
  


set.seed(1)
x <- rnorm(100)    #predictor
log.mu <- 0.5 + 0.3 * x
y <- rpois(100, exp(log.mu))
summary(y)

plot(x, y)



# Random Sampling

set.seed(1)
sample(1:10, 4)

sample(1:10, 4)

sample(letters, 5)

sample(1:25)

sample(1:15, replace = TRUE)













# R Profiler

system.time()


# Elapsed time > user time
system.time(readlines("http://www.jhsph.edu"))



# Elapsed time < user time
hilbert <- function(n) {
  i <- l:n
  l / outer(i - 1, i, "+")
}


x <- hilbert(1000)
system.time(svd(x))




# Timing longer expressing

system.time({
  n <- 1000
  r <- numeric(n)
  for (i in 1:n) {
    x <- rnorm(n)
    r[i] <- mean(x)
  }
})







## lm(y ~ x)

sample.interval=1000



$by.total



$by.self




# Week 4 Quiz


set.seed(1)
rpois(5, 2)





set.seed(10)
x <- rep(0:1, each = 5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e





#8
library(datasets)
Rprof()
fit <- lm(y ~ x1 + x2)
Rprof(NULL)






