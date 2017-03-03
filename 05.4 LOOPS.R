# LOOPS


# Loop over a vector
# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1
for (p in linkedin) {
  print(p)
}



# Loop version 2
for (i in 1:length(linkedin)) {
  print(linkedin[i])
}






#Loop over a list


# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (p in nyc) {
  print(p)
}



# Loop version 2
for (i in 1:length(nyc)) {
  print(nyc[[i]])
}






# Loop over a matrix

# The tic-tac-toe matrix ttt has already been defined for you

# define the double for loop
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))
  }
}





# Mix it up with a Control Flow

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Code the for loop with conditionals
for (li in linkedin) {
  if (li >10 ) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  print(li)
}






# Next you break it

# The break statement abandons the active loop: the remaining code in the loop is skipped and the loop is not iterated over anymore.
# The next statement skips the remainder of the code in the loop, but continues the iteration

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
  # Add if statement with break
  if (li > 16) {
    print("This is ridiculous, I'm outta here!")
    break
  }
  
  # Add if statement with next
  if (li < 5) {
    print("This is too embarrassing!")
    next
  }  
  
  print(li)
}





# Build a Loop from Scratch




# Pre-defined variables
rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]

# Initialize rcount
rcount <- 0

# Finish the for loop
for (char in chars) {
  if (char == "r") {
    rcount <- rcount + 1
  }
  if (char == "u") {
    break
  }
}

# Print out rcount
rcount

















