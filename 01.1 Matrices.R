# Matrix


# a matrix is a collection of elements of the same data type (numeric, character, or logical) arranged 
# into a fixed number of rows and columns. Since you are only working with rows and columns, a matrix is 
# called two-dimensional. You can construct a matrix in R with the matrix()

# matrix(1:9, byrow = TRUE, nrow = 3)

# In the matrix() function:  
# .The first argument is the collection of elements that R will arrange into the rows and columns of the matrix. 
# Here, we use 1:9 which is a shortcut for c(1, 2, 3, 4, 5, 6, 7, 8, 9).
# .The argument byrow indicates that the matrix is filled by the rows. If we want the matrix to be filled by 
# the columns, we just place byrow = FALSE. 
# .The third argument nrow indicates that the matrix should have three rows.


# Step 1 Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow = TRUE, nrow = 3)


# Step 2
# In this exercise, you'll combine all these figures into a single vector. Next, you'll build a matrix from this vector.
# Instructions
# .Use c(new_hope, empire_strikes, return_jedi) to combine the three vectors into one vector. Call this vector box_office.
# .Construct a matrix with 3 rows, where each row represents a movie. Use the matrix() function to this. The first argument is the vector box_office, containing all box office figures. Next, you'll have to specify nrow = 3 and byrow = TRUE. Name the resulting matrix star_wars_matrix.



# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)



# Naming a Matrix



# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
star_wars_matrix



#Calculating the worldwide box office
#the function rowSums() conveniently calculates the totals for each row of a matrix. This function creates a new vector:
#rowSums(my_matrix)


# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector



# Adding a column for the Worldwide box office
#You can add a column or multiple columns to a matrix with the cbind() function, 
#which merges matrices and/or vectors together by column. 
#For example:  big_matrix <- cbind(matrix1, matrix2, vector1 ...)

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)









# Adding a row

# star_wars_matrix and star_wars_matrix2 are available in your workspace
star_wars_matrix  
star_wars_matrix2 

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
all_wars_matrix






# The total box office revenue for the entire saga
# Just like every cbind() has a rbind(), every colSums() has a rowSums(). 

# all_wars_matrix is available in your workspace
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)

# Print out total_revenue_vector
total_revenue_vector




# Selection of matrix elements

#Similar to vectors, you can use the square brackets [ ] to select one or multiple elements from a matrix. 
#Whereas vectors have one dimension, matrices have two dimensions. You should therefore use a comma to separate 
#that what to select from the rows from that what you want to select from the columns. For example: 
#  . my_matrix[1,2] selects the element at the first row and second column.
#  . my_matrix[1:3,2:4] results in a matrix with the data on the rows 1, 2, 3 and columns 2, 3, 4.

#If you want to select all elements of a row or a column, no number is needed before or after the comma, respectively:
#  . my_matrix[,1] selects all elements of the first column.
#  . my_matrix[1,] selects all elements of the first row.

# TASK
#.Select the non-US revenue for all movies (the entire second column of all_wars_matrix), store the result as non_us_all.
#.Use mean() on non_us_all to calculate the average non-US revenue for all movies. Simply print out the result.
#.This time, select the non-US revenue for the first two movies in all_wars_matrix. Store the result as non_us_some.
#.Use mean() again to print out the average of the values in non_us_some.



# all_wars_matrix is available in your workspace
all_wars_matrix

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]

# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]

# Average non-US revenue for first two movies
mean(non_us_some)






# A little arithmetic with matrices
#Similar to what you have learned with vectors, the standard operators like +, -, /, *, etc. work in an element-wise way on matrices in R. 
#For example, 2 * my_matrix multiplies each element of my_matrix by two.


# all_wars_matrix is available in your workspace
all_wars_matrix

# Estimate the visitors
visitors <- all_wars_matrix / 5

# Print the estimate to the console
visitors


# A little arithmetic with matrices (2)

# all_wars_matrix and ticket_prices_matrix are available in your workspace
all_wars_matrix
ticket_prices_matrix

# Estimated number of visitors
visitors <- all_wars_matrix / ticket_prices_matrix

# US visitors
us_visitors <- visitors[,1]

# Average number of US visitors
mean(us_visitors)





















