# Lists  -  Lists, as opposed to vectors, can hold components of different types, just like your to-do list 
#at home or at work. This intro to R chapter will teach you how to create, name and subset these lists.

# Vectors (one dimensional array): can hold numeric, character or logical values. The elements in a vector all have the same data type.
# Matrices (two dimensional array): can hold numeric, character or logical values. The elements in a matrix all have the same data type.
# Data frames (two-dimensional objects): can hold numeric, character or logical values. Within a column all elements have the same data type, but different columns can be of different data type.



# Lists, why would you need them? (2)

# A list in R allows you to gather a variety of objects under one name (that is, the name of the list) in an ordered way. 
# These objects can be matrices, vectors, data frames, even other lists, etc. It is not even required that these objects are related to each other in any way.
# You could say that a list is some kind super data type: you can store practically any piece of information in it





# Creating a list

# my_list <- list(comp1, comp2, comp3)

# The arguments to the list function are the list components. 
#Remember, these components can be matrices, vectors, other lists, ...




# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)
my_list



# Creating a named list
# If you want to name your lists after you've created them, you can use the names() function as you did with vectors. The following commands are fully equivalent to the assignment above:
# my_list <- list(your_comp1, your_comp2)
# names(my_list) <- c("name1", "name2")



# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Adapt list() call to give the components names
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec", "mat", "df")

# Print out my_list
my_list








# Creating a named list (2)


# The variables mov, act and rev are available

# Finish the code to build shining_list
shining_list <- list(moviename = mov, actors = act, reviews = rev)








# Selecting elements from a list

# One way to select a component is using the numbered position of that component. 
# For example, to "grab" the first component of shining_list you type    
#  shining_list[[1]]

# You can also refer to the names of the components, with [[ ]] or with the $ sign. 
# Both will select the data frame representing the reviews:   shining_list[["reviews"]]
# shining_list$reviews

# shining_list is already pre-loaded in the workspace
shining_list

# Print out the vector representing the actors
shining_list


# Print the second element of the vector representing the actors
shining_list$actors[2]






# Adding more movie information to the list

# To conveniently add elements to lists you can use the c() function, 
# that you also used to build vectors:  ext_list <- c(my_list , my_val)

# This will simply extend the original list, my_list, with the component my_val. 
# This component gets appended to the end of the list. If you want to give the new list item a name, 
# you just add the name as you did before:  ext_list <- c(my_list, my_name = my_val)


# shining_list, the list containing movie name, actors and reviews, is pre-loaded in the workspace
shining_list

# We forgot something; add the year to shining_list
shining_list_full <- c(shining_list, year = 1980)

# Have a look at shining_list_full
str(shining_list_full)
























