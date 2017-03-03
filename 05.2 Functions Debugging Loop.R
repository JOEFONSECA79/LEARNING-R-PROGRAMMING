# COUSERA Week 3 Loop Functions and Debugging



#lapply - always returns a list

x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)



x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x,mean)






x <-1:4
lapply(x, runif)


x <-1:4
lapply(x, runif, min=0, max = 9)


#lapply and friedns make heavy use of anonymous functions

x <- list(a = matrix(1:4,2,2), b = matrix(1:6,3,2))
x


#Extract the 1st column from both matrix
lapply(x, function(elt) elt[,1])




#sapply - Returns a Vector unless to complex then it will return a list


x <- list(a=1:4, b=rnorm(10), c=rnorm(20,10), d= rnorm(100,5))

lapply(x,mean)

sapply(x,mean)

mean(x)





#apply

x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean)    #20 rows and 10 columns

apply(x, 1, sum)    # Preserve all the rows and collapse all the columns




rowSums = apply(x, 1, sum)
rowSums

rowMeans=apply(x,1,mean)
rowMeans

colSums=apply(x,2,sum)
colSums

colMeans=apply(x,2,mean)
colMeans




# Other ways to apply

x<-matrix(rnorm(200), 20, 10)
apply(x,1,quantile, probs = c(0.25, 0.75))    # apply will create a new matrix with the # of rows






# Average Matrix in an array

a <- array(rnorm(2 * 2 * 10), c(2,2,10))
apply(a, c(1,2), mean)


rowMeans(a, dims = 2)



# mapply - 











#Debugging


log(-1)    # Warning msg
#


printmessage <- function(x) {
  if(x > 0)
    print("x is greater than zero")    # prints the string in the text between " abc "
  else
    print("x is less than zero")
  invisible(x)    # returns the same object without auto printing
}


printmessage(1)



printmessage(-5)



printmessage(NA)    # Example where error missing value for TRUE/FALSE, NA was passed to it






printmessage2 <- function(x) {
  
  if(is.na(x))
    print("x is a missing value!")
  else if(x > 0)
    print("x is greater than zero")    # prints the string in the text between " abc "
  else
    print("x is less than zero")
  invisible(x)    # returns the same object without auto printing
}




x <- log(-1)    # Warning example

printmessage2(1)


printmessage2(x)



# traceback great to use and show the steps in the function


mean(x)
traceback()
mean(x)








mean(x)
traceback()



lm(y ~ x)
traceback()








debug(lm)
lm(y ~ x)








options(error = recover)    # sets options for working session
read.csv("nosuchfile")








#QUIZ


library(datasets)
data(iris)

?iris




#Question 1

sapply(split(iris$Sepal.Length, iris$Species), mean)

#Question 2

rowMeans(iris[,1:4])


apply(iris[,1:4],2,mean)






#3

library(datasets)
data(mtcars)


?mtcars



require(graphics)
pairs(mtcars, main = "mtcars data")
coplot(mpg ~ disp | as.factor(cyl), data = mtcars,
       panel = panel.smooth, rows = 1)



sapply(split(mtcars$mpg, mtcars$cyl), mean)    # assignes for the object with $cyl







#4


sapply(split(mtcars$hp, mtcars$cyl), mean)
#82 + 209 / 2


new <- tapply(mtcars$hp, mtcars$cyl, mean)
round(abs(new[3]-new[1]))

new


#5
debug(ls)






















