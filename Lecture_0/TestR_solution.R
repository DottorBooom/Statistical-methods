# Calculate the sum of the first 100 natural numbers.
sum(1:100)

# Create a vector containing the numbers 2, 4, 6, 8, 10. 
# Then, multiply each element of the vector by 3.
V <- C(2, 4, 6, 8, 10)
V*3

# Given the vector below, extract all elements greater than 5.
# vec <- c(1, 3, 5, 7, 9)
ec <- c(1, 3, 5, 7, 9)
ec[ec>5]


# Create a data frame with 3 columns: 'Name' (character), 
# 'Age' (numeric), and 'Score' (numeric). The data frame should contain 
# the following data:
# Name: "Alice", "Bob", "Charlie"
# Age: 25, 30, 22
# Score: 85, 90, 88

Name <- c("Alice", "Bob", "Charlie")
Age <- c(25, 30, 22) 
Score <- c(85, 90, 88)
D <- data.frame(Name, Score, Age)

# Write a function named `square` that takes a number as input and 
# returns its square.
square <- function(N) {
  return(N*N)
  }

# Write a loop that prints the numbers from 1 to 5.
for (i in 1:5)
{
  print(i)
}

# Use the `apply` function to calculate the mean of each row of the matrix
# mat <- matrix(1:9, nrow = 3)
mat <- matrix(1:9, nrow = 3)
apply(mat, 1, mean)

# Generate a simple scatter plot using the following vectors:
# x <- c(1, 2, 3, 4, 5)
# y <- c(2, 3, 5, 7, 11)
x <- c(1, 2, 3, 4, 5)
y <- c(2, 3, 5, 7, 11)
plot(x,y)

# Calculate the standard deviation of the following vector:
# data <- c(10, 12, 15, 20, 22)
data <- c(10, 12, 15, 20, 22)
sd(data)

