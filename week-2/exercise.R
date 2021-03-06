## Part 1: Debugging

my_num <- 6
initials <- "?. ?."

my_vector <- c(my_num, initials)

# run ?sum to get more info
vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# Because we can only use "sum()" for numbers and not letters

install.packages("stringr")

my_line <- "Hey, hey, this is the library"

print(str_length(my_line))

# Describe why this doesn't work: 
# We didn't use library() on the stringr package

said_the_famous <- paste(my_line, " - ", initial)

# Describe why this doesn't work: 
# We haven't stored "initial" as a variable in the environmentt


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
typeof(c("dogs", "cats", "birds")) # "character"

typeof(c(1, 4, 6)) # "double"

typeof(c(1, "dogs")) # "character"

# Write a function `compare_length` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
compare_length <- function(v1, v2) {
  diff <- abs(length(v1) - length(v2))
  diff_string <- paste('The difference in lengths is', diff)
  return(diff_string)
}

# Pass two vectors of different length to your `compare_length` function
compare_length(c(1,2,3), 2:200)

# Write a function `describe_difference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
describe_difference <- function(a, b) {
  diff <- length(a) - length(b)
  if(diff > 0) {
    sentence <- paste('Your first vector is longer by', diff, 'elements')
  } else {
    sentence <- paste('Your second vector is longer by', diff, 'elements')
  }
  return(sentence)
}

# Pass two vectors to your `describe_difference` function
describe_difference(2:7, 30:90)

# Write a function `combine_vectors` that takes in 3 vectors and combines them into one
combine_vectors <- function(v1,v2,v3) {
  return(c(v1,v2,v3))
}

# Send 3 vectors to your function to test it.
combine_vectors(c("Cats ", "and ", "of" ), c("fur"), c("group", "away"))

# Write a function `caps_time` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
caps_time <- function(couses) {
  return(gsub("[A-Z]", "", courses))
}
caps_time(c("Economics 382", "American Indian Studies 340", "Informatics 201"))
