# lapply - Datacamp - https://campus.datacamp.com/courses/intermediate-r/chapter-4-the-apply-family?ex=1



nyc <- list(pop = 8405837,
            boroughs = c("Manhattan", "Brox", "Brooklyn",
                         "Queens", "Staten Island"),
            capital = FALSE)


for(info in nyc) {
  print(class(info))
}



lapply(nyc, class)    # a quicker way to loop through the data

cities <- c("New York", "Paris", "London", "Tokyo",
            "Rio de Janeiro", "Cape Town")

num_chars <- c()
for(i in 1:length(cities)) {
  num_chars[i] <- nchar(cities[i])
}

num_chars    # testing results

lapply(cities, nchar)  # Input is a list, output is a list


unlist(lapply(cities, nchar))    #if you wan to convert the list into a vector



oil_prices <- list(2.37, 2.49, 2.18, 2.22, 2.47, 2.32)

triple <- function(x) {
  3 * x    # function triples x
}

results <- lapply(oil_prices, triple)    # output as a list

str(results)
unlist(results)    # output as a vector



multiply <- function(x, factor) {
  x * factor
}


times3 <- lapply(oil_prices, multiply, factor = 3)    # multiplies by 3
unlist(times3)



times4 <- lapply(oil_prices, multiply, factor = 4)    # multiplies by 4
unlist(times4)




# Using lapply with a built-in R Function

# The vector pioneers has already been created for you
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

# Split names from birth year
split_math <- strsplit(pioneers, split = ":")

# Convert to lowercase strings: split_low
split_low <- lapply(split_math,tolower)

# Take a look at the structure of split_low
str(split_low)


# Use lapply with your own function - https://campus.datacamp.com/courses/intermediate-r/chapter-4-the-apply-family?ex=3
# Let's write some code to select the names and the birth years separately.


# Code from previous exercise:
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Write function select_first()
select_first <- function(x) {
  x[1]
}

# Apply select_first() over split_low: names
names <- lapply(split_low, select_first)

# Write function select_second()
select_second <- function(x) {
  x[2]
}

# Apply select_second() over split_low: years
years <- lapply(split_low, select_second)


years



# lapply and anonymous functions - https://campus.datacamp.com/courses/intermediate-r/chapter-4-the-apply-family?ex=4

# Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Transform: use anonymous function inside lapply
select_first <- function(x) {
  x[1]
}
names <- lapply(split_low, select_first)

# Transform: use anonymous function inside lapply
select_second <- function(x) {
  x[2]
}
years <- lapply(split_low, select_second)

years

str(years)

unlist(years)    # output as a vector

?lapply













