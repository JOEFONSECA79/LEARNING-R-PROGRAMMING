# Loop
# Loops can come in handy on numerous occasions. While loops are like repeated if statements; the for loop is designed to 
# iterate over all elements in a sequence. Learn all about them in this chapter.
# while(condition {
#    expr
# })



ctr <- 1

while (ctr <= 7 ) {
  print(paste("ctr is set to", ctr))
  ctr <- ctr + 1
}

ctr


# break statement
ctr <- 1
while(ctr <=7) {
  if(ctr %% 5 == 0) {
    break
  }
  print(paste("ctr is set to", ctr))
  ctr <- ctr + 1
}






# Write a while loop

# Initialize the speed variable
speed <- 64

# Code the while loop
while (speed > 30 ) {
  print(paste("Slow down!"))
  speed <- speed -7
}

# Print out the speed variable
speed


#Throw in more conditionals

# Initialize the speed variable
speed <- 64

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is speed"))
  if (speed > 48 ) {
    print(paste("Slow down big time!"))
          speed <- speed - 11
  } else {
    print(paste("Slow down!"))
          speed <- speed - 6
  }
}




# Stop the while loop: break
# The break statement is a control statement. When R encounters it, the while loop is abandoned completely.

# Initialize i as 1 
i <- 1

# Code the while loop
while (i <= 10) {
  print(3 * i)
  if ( (3 * i ) %% 8 == 0 ) {
    break  
  }
  i <- i + 1
}






# For Loop works on vectors and list
# https://campus.datacamp.com/courses/intermediate-r/chapter-2-loops?ex=6
# for(var in seq) {
#   expr
# }

# Can be used in Vectors and Lists
#Vector example

cities <- c("New York", "Paris", "London", "Tokyo", "Providence", "Baltimore")

for(city in cities) {
  print(city)
}


# for loop over list 
#List example
cities <- list("New York", "Paris", "London", "Tokyo", "Providence", "Baltimore")

for(city in cities) {
  print(city)
}


#break statements 


# stops when a city is = 6 characters

#Next statement
cities <- list("New York", "Paris", "123456789", "London", 
               "Tokyo", "Providence", "Baltimore")

for(city in cities) {
  if(nchar(city) == 6) {
    break
  }
  print(city)
}





# next statement
# nchar(abx) prints # of char string
#Next statement
cities <- list("New York", "Paris", "123456789", "London", 
               "Tokyo", "Providence", "Baltimore")

for(city in cities) {
  if(nchar(city) == 6) {
    next
  }
  print(city)
}



# for loop: v2



cities <- list("New York", "Paris", "123456789", "London", 
               "Tokyo", "Providence", "Baltimore")

for(i in 1:length(cities)) {
  print(city[i])
}





# Adding more information now


cities <- list("New York", "Paris", "123456789", "London", 
               "Tokyo", "Providence", "Baltimore")

for(i in 1:length(cities)) {
  print(paste(cities[i], "is on position", i, "in the cities vector."))
}







