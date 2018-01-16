## Part 1: Debugging

my.num <- 6
initials <- "A. V."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# because integers and strings are not the same type they can't be addded together

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# the method isn't available to use

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# initials variable name was mispelled


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
vector <- c(1:10)
tell.me.type <- typeof(vector)
print(tell.me.type)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  difference <- abs(length(v1) - length(v2))
  return(paste("The difference in lengths is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
v1 <- c(1:32)
  v2<- c(1:65)
  CompareLength(v1, v2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
  DescribeDifference <- function(v1, v2) {
    difference <- (length(v1) - length(v2))
    if (difference > 0) {
      dif.text <- paste(("Your first vector is longer by", difference, "elements"))
    } else {
      dif.text <- paste(("Your second vector is longer by", difference, "elements"))
    }
    return(dif.text)
  }

# Pass two vectors to your `DescribeDifference` function
  DescribeDifference(v1, v2)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
  CombineVectors <- function(a, b, v3) {
    
    return(c(a,b,v3))
  }

# Send 3 vectors to your function to test it.
  CombineVectors(1:15, c(1,2,4), c("a","b"))

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses) {
  gsub("[A-Z"]","",courses)
}

