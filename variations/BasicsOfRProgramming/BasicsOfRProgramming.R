# Experiment 1: Basics of R programming

# 1. Max and Min of a vector
vec <- c(5,10,15,20,25,30)
cat("Max:", max(vec), "\n")
cat("Min:", min(vec), "\n")

# 2. Factorial of a number
factorial_num <- function(n) {
  if (n < 0) stop("Error: Negative number")
  result <- 1
  for (i in 1:n) result <- result * i
  result
}
cat("Factorial of 5:", factorial_num(5), "\n")

# 3. Fibonacci sequence
fibonacci <- function(n) {
  fibs <- numeric(n)
  fibs[1] <- 0
  if (n >= 2) fibs[2] <- 1
  for (i in 3:n) fibs[i] <- fibs[i-1] + fibs[i-2]
  fibs
}
cat("First 10 Fibonacci:", fibonacci(10), "\n")

# 4. Simple calculator
calculator <- function(a, b, op) {
  switch(op, '+' = a+b, '-' = a-b, '*' = a*b,
         '/' = if(b==0) NA else a/b,
         stop("Invalid operation"))
}
cat("3+4=", calculator(3,4,"+"), "\n")

# 5. Basic plots
x <- 1:5; y <- x^2
plot(x, y, main="Plot of y=x^2")
barplot(y, names.arg=x, main="Barplot of x^2")
pie(y, labels=x, main="Pie chart of x^2")
