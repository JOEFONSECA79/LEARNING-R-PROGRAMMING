#Factor
# Very often, data falls into a limited number of categories. For example, humans are either male or female. 
# In R, categorical data is stored in factors. Given the importance of these factors in data analysis, you 
# should start learning how to create, subset and compare them now!

#What's a factor and why would you use it?
#The term factor refers to a statistical data type used to store categorical variables. 
#The difference between a categorical variable and a continuous variable is that a categorical variable 
#can belong to a limited number of categories. A continuous variable, on the other hand, can correspond to 
#an infinite number of values.


# Assign to the variable theory what this chapter is about!
theory <- "factors for categorical variables"




# What's a factor and why would you use it? (2)
#To create factors in R, you make use of the function factor(). First thing that you have to do is create a vector that 
#contains all the observations that belong to a limited number of categories. For example, gender_vector contains the sex of 
#5 different individuals:    gender_vector <- c("Male","Female","Female","Male","Male")
#It is clear that there are two categories, or in R-terms 'factor levels', at work here: "Male" and "Female".
#The function factor() will encode the vector as a factor:    factor_gender_vector <- factor(gender_vector)



# Gender vector
gender_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert gender_vector to a factor
factor_gender_vector <- factor(gender_vector)

# Print out factor_gender_vector
factor_gender_vector



# What's a factor and why would you use it? (3)
# There are two types of categorical variables: a nominal categorical variable and an ordinal categorical variable.
# A nominal variable is a categorical variable without an implied order. This means that it is impossible to say that 
# 'one is worth more than the other'. For example, think of the categorical variable animals_vector with the 
# categories "Elephant", "Giraffe", "Donkey" and "Horse". Here, it is impossible to say that one stands above or below the other.
# Ordinal variables do have a natural ordering. Consider for example the categorical variable temperature_vector with the 
#categories: "Low", "Medium" and "High". Here it is obvious that "Medium" stands above "Low", and "High" stands above "Medium".


# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector







# Factor levels
#Sometimes you will want to change the names of these levels for clarity or other reasons. 
#R allows you to do this with the function levels():  levels(factor_vector) <- c("name1", "name2",...)


# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <-c("Female", "Male")

factor_survey_vector







# Summarizing a factor
#This will give you a quick overview of the contents of a variable:  summary(my_var)



# Build factor_survey_vector with clean levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

# Generate summary for survey_vector
summary(survey_vector)


# Generate summary for factor_survey_vector
summary(factor_survey_vector)



# Battle of the sexes


# Build factor_survey_vector with clean levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")

# Male
male <- factor_survey_vector[1]

# Female
female <- factor_survey_vector[2]

# Battle of the sexes: Male 'larger' than female?
male > female




# Ordered factors


# Create speed_vector
speed_vector <-c("fast", "slow", "slow", "fast", "insane")





# Ordered factors (2)
# Used to manually assign order to factors

# Create speed_vector
speed_vector <- c("fast", "slow", "slow", "fast", "insane")

# Convert speed_vector to ordered factor vector
factor_speed_vector <- factor(speed_vector, ordered= TRUE, levels = c("slow", "fast", "insane"))

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)



# Comparing ordered factors


# Create factor_speed_vector
speed_vector <- c("fast", "slow", "slow", "fast", "insane")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "fast", "insane"))

# Factor value for second data analyst
da2 <- factor_speed_vector[2]

# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
da2 > da5

















