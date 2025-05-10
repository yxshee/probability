# Experiment 2: Descriptive statistics and sample space

# 1a. Coin sample space (demonstration)
coins <- c(rep("gold",20), rep("silver",30), rep("bronze",50))
# 1b. Surgical outcomes
set.seed(1)
outcomes <- sample(c("success","failure"), 10, TRUE, c(0.9,0.1))
print(outcomes)

# 2. Birthday paradox simulation
birthday_prob <- function(n, trials=10000) {
  mean(replicate(trials, any(duplicated(sample(1:365, n, TRUE)))))
}
for(n in c(23,30,40)) cat("n=",n,"p=",birthday_prob(n),"
")

# 3. Conditional probability function
cond_prob <- function(pC,pR,pC_given_R) (pC_given_R * pR)/pC
cat("P(rain|cloud)=", cond_prob(0.4,0.2,0.85), "
")

# 4. Iris dataset exploration
data(iris)
head(iris); str(iris)
sepal <- iris$Sepal.Length
cat("Mean:",mean(sepal),"Median:",median(sepal),"IQR:",IQR(sepal),"
")
summary(iris)

# 5. Mode function
get_mode <- function(v) {
  uniq <- unique(v); uniq[which.max(tabulate(match(v,uniq)))]
}
cat("Mode sepal length:", get_mode(sepal), "
")
