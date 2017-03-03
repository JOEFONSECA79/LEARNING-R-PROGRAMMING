# Intermediate R
# Relational Operator Conditions
# Conditionals and Control Flow


# EQUALITY ==

TRUE == TRUE

TRUE == FALSE

"hello" == "goodbye"


3 == 2



TRUE == FALSE


#  Inequality !=

TRUE != TRUE

TRUE != FALSE

  
"hello" != "goodbye"

3 != 2





# ---------------------------------------------------
# < and > 

3 < 5

3 > 5


"hello" > "goodbye"


TRUE < FALSE


# <= AND >=
  
  
5>=3

3>=3


# RELATIONAL OPERATORS & VECTORS

linkedin <- c(16, 9,13,5,2,17,14)
linkedin

linkedin > 10


facebook <- c(17,7,5,16,8,13,14)
facebook

facebook <= linkedin

# EXERCISES

# Comparison of logicals
TRUE == FALSE


# Comparison of numerics
-6 * 14 != 17-101

# Comparison of character strings
"useR" == "user"

# Compare a logical with a numeric
TRUE == 1






# Greater and Less Than

# Comparison of numerics
-6 * 5 + 2 >= -10 + 1

# Comparison of character strings
"raining" <= "raining dogs"

# Comparison of logicals
TRUE > FALSE





# Compare vectors

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15


# Quiet days
linkedin <= 5

# LinkedIn more popular than Facebook
linkedin > facebook





# Compare Matrices

# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views == 13

# When is views less than or equal to 14?
views <= 14



# LOGICAL OPERATORS
# AND operator &
# OR operator |
# NOT operator !



TRUE & TRUE
FALSE & TRUE
TRUE & FALSE
FALSE & FALSE



X <- 12
X > 5 & X < 15  # TRUE




# OR Operator

TRUE | TRUE

TRUE | FALSE

FALSE | TRUE

y <- 4
y
y < 5 | y > 15   #TRUE

y < 1 | y > 15   #FALSE







# NOT Operator !


!TRUE 

!FALSE  #TRUE


!(x < 5)
x >=5



is.numeric(5)   #TRUE

!is.numeric(5)  #FALSE

is.numeric("hello")   #FALSE

!is.numeric("hello")  #TRUE





# Logical Operator & Vectors

c(TRUE, TRUE, FALSE) & c(TRUE, FALSE, FALSE)   #TRUE, FALSE, FALSE


c(TRUE, TRUE, FALSE) | c(TRUE, FALSE, FALSE)   #TRUE, TRUE, FALSE


c(TRUE, TRUE, FALSE) | c(TRUE, FALSE, FALSE)   #TRUE, TRUE, FALSE


!c(TRUE, TRUE, FALSE)   #FALSE, FALSE, TRUE



# LOGICAL OPERATORS


# & VS &&
# && ONLY RETURNS RESULT OF 1ST ELEMENT OF THE VECTOR

c(TRUE, TRUE, FALSE) & c(TRUE, FALSE, FALSE)

c(TRUE, TRUE, FALSE) && c(TRUE, FALSE, FALSE)


# | VS ||
# || ONLY RETURNS RESULT OF 1ST ELEMENT OF THE VECTOR

c(TRUE, TRUE, FALSE) | c(TRUE, FALSE, FALSE)

c(TRUE, TRUE, FALSE) || c(TRUE, FALSE, FALSE)



# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last < 5 | last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <= 20
last





#& and | (2)


# The social data (linkedin, facebook, views) has been created for you

# linkedin exceeds 10 but facebook below 10
linkedin > 10 & facebook < 10

# When were one or both visited at least 12 times?
linkedin >= 12 | facebook >=12

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14







# Reverse the result: !
# The ! operator, which negates a logical value. 
# Here are some R expressions that use !. They all evaluate to FALSE:

!TRUE
!(5 > 3)
!!FALSE



x <- 5
y <- 7
!(!(x < 4) & !!!(y > 12))







# Blend it all together




# li_df is pre-loaded in your workspace

# Select the second column, named day2, from li_df: second
second <- li_df$day2

# Build a logical vector, TRUE if value in second is extreme: extremes
extremes <- second > 25 | second < 5

# Count the number of TRUEs in extremes
sum(extremes)

# Solve it with a one-liner
sum(li_df$day2 > 25 | li_df$day2 < 5)







# Conditional Statements

# IF STATEMENT
# if(condition {
#    expr
})



x <- -3


if(x < 0) {
  print("x is a negative number")
}





# IF THEN ELSE

# if(condition) {
#    expr1
# }  else {
#    expr2  
# }



x <- 7

if(x < 0) {
  print("x is a negative number")
} else {
  print("x is either a positive number or zero")
}



# ELSE IF STATEMENT

if(condiation1) {
  expr1
} else if(condition2) {
  expr2
} else {
  expr3
}





x <- 0

if(x < 0) {
  print("x is a negative number")
} else if(x ==0) {
  print("x is zero")
} else {
  print("x is a positive number")
}


# The If Statement

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# Write the if statement for num_views
if ( num_views > 15) {
  print("You're popular!")
}





# Add an Else
# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else {
  print("Unknown medium")
}



# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else {
  print("Try to be more visible!")
}





# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  # Add code to print correct string when condition is TRUE
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}







# Variables related to your last day of recordings
li <- 15
fb <- 9

# Code the control-flow construct
if (li >= 15 & fb >= 15) {
  sms <- 2 * (li + fb)
} else if (li < 10 & fb < 10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li + fb
}

# Print the resulting sms to the console
sms


