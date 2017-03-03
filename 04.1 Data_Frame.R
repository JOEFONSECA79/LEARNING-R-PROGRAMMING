# Data Frame  -  https://campus.datacamp.com/courses/free-introduction-to-r/chapter-5-data-frames?ex=1
# Most data sets you will be working with will be stored as data frames. By the end of this chapter focused 
# on R basics, you will be able to create a data frame, select interesting parts of a data frame and order 
# a data frame according to certain variables.


# A data frame has the variables of a data set as columns and the observations as rows. 
# This will be a familiar concept for those coming from different statistical software packages such as SAS or SPSS.



# Print out built-in R data frame
mtcars 



# Quick, have a look at your data set
# When you work with (extremely) large data sets and data frames, your first task as a data analyst is to develop a 
# clear understanding of its structure and main elements. 

# The function head() enables you to show the first observations of a data frame. 
# The function tail() prints out the last observations in your data set.


# Call head() on mtcars
head(mtcars)





# Have a look at the structure
# Another method that is often used to get a rapid overview of your data is the function str(). 
# The function str() shows you the structure of your data set. For a data frame it tells you:
# .The total number of observations (e.g. 32 car types)
# .The total number of variables (e.g. 11 car features)
# .A full list of the variables names (e.g. mpg, cyl ... )
# .The data type of each variable (e.g. num)
# .The first observations

# Applying the str() function will often be the first thing that you do when receiving a new data set or data frame. 
# It is a great way to get more insight in your data set before diving into the real analysis.


# Investigate the structure of mtcars
str(mtcars)





# Creating a data frame
# Creating your own data sets
# You construct a data frame with the data.frame() function. As arguments, you pass the vectors 
# from before: they will become the different columns of your data frame. 



# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)



# Creating a data frame (2)


# Check the structure of planets_df
str(planets_df)





# Selection of data frame elements

# Similar to vectors and matrices, you select elements from a data frame with the help of square brackets [ ]. 
# By using a comma, you can indicate what to select from the rows and the columns respectively. For example:
# . my_df[1,2] selects the value at the first row and select element in my_df.
# . my_df[1:3,2:4] selects rows 1, 2, 3 and columns 2, 3, 4 in my_df.

#Sometimes you want to select all elements of a row or column. For example, my_df[1, ] selects all elements of the 
# first row. Let us now apply this technique on planets_df!
  
# The planets_df data frame from the previous exercise is pre-loaded
planets_df
# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]

# Print out data for Mars (entire fourth row)
planets_df[4,]



# Selection of data frame elements (2)

# Instead of using numerics to select elements of a data frame, 
planets_df[1:3,1]

#you can also use the variable names to select columns of a data frame. 
planets_df[1:3,"type"]



# The planets_df data frame from the previous exercise is pre-loaded
planets_df

# Select first 5 values of diameter column
planets_df[1:5,"diameter"]





# Only planets with rings

#You will often want to select an entire column, namely one specific variable from a data frame. 
#If you want to select all elements of the variable diameter, for example, both of these will do the trick:  
planets_df[,3]

planets_df[,"diameter"]

#However, there is a short-cut. If your columns have names, you can use the $ sign:
planets_df$diameter





# planets_df is pre-loaded in your workspace
planets_df

# Select the rings variable from planets_df
rings_vector <- planets_df$rings

# Print out rings_vector
rings_vector







# Only planets with rings (2)


# planets_df and rings_vector are pre-loaded in your workspace
rings_vector
# Adapt the code to select all columns for planets with rings
planets_df[rings_vector, ]








# Only planets with rings but shorter

#  subset(my_df, subset = some_condition)


# The first argument of subset() specifies the data set for which you want a subset. 
#By adding the second argument, you give R the necessary information and conditions to select the correct subset. 

#The code below will give the exact same result as you got in the previous exercise, but this time, you didn't need the rings_vector!
subset(planets_df, subset = rings)





# planets_df is pre-loaded in your workspace
planets_df

# Select planets with diameter < 1
subset(planets_df, diameter < 1)





# Sorting
# In data analysis you can sort your data according to a certain variable in the data set. 
# In R, this is done with the help of the function order(). 

# order() is a function that gives you the ranked position of each element when it is applied on a variable, such as a vector for example:
#  > a <- c(100, 10, 1000)
# > order(a)
# [1] 2 1 3


# Play around with the order function in the console
order(planets_df)



# Sorting your data frame


# planets_df is pre-loaded in your workspace
planets_df

# Use order() to create positions
positions <- order(planets_df$diameter)  

# Use positions to sort planets_df
planets_df[positions,]

















































































