# Basics
add2 <- function (x, y) {
  x + y
}

above10 <- function(x) {
  use <- x > 10
  x[use]
}

above <- function(x, n=10) {
  use <- x > n
  x[use]
}

# Retrieve means from data frame
columnmean <- function(y, removeNA = TRUE) {
  num.cols <- ncol(y)
  means <- numeric(num.cols)
  for (i in 1:num.cols) {
    means[i] <- mean(y[,i], na.rm = removeNA)
  }
  
  means
}