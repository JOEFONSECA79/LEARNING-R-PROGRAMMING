# Functions



sd(c(1,5,6,7))


values <- c(1,5,6,7)
sd(values)

my_sd <- sd(values)

my_sd



#help on functions
help(sd)


?sd



values <- c(1,5,6, NA)
sd(values)

sd(values, TRUE)

sd(values,na.rm = TRUE)




args(sd)




# Function documentation

help(sample)
?sample

args(sample)




# Consult the documentation on the mean() function
help(mean)
?mean

# Inspect the arguments of the mean() function

args(mean)



#Use a Function


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
avg_li <- mean(linkedin)
avg_fb <- mean(facebook)


# Inspect avg_li and avg_fb
print(avg_li)
print(avg_fb)


# Use Function (2)

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum
avg_sum <- mean(linkedin + facebook)

# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean(linkedin + facebook, trim = 0.2)

# Inspect both new variables
print(avg_sum)
print(avg_sum_trimmed)



# Use a Function (3)




# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
mean(linkedin, trim = 0, na.rm = TRUE)

# Advanced average of linkedin
print <- mean(linkedin, trim = 0, na.rm = TRUE)






# Functions inside functions

speed <- 31
print(paste("Your speed is", speed))



# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation
mean(abs(linkedin - facebook), na.rm = TRUE)







# Required, or optional?

































