# Experiment 3: Probability distributions

# Binomial P(7<=X<=9)
p_bino <- pbinom(9,12,1/6) - pbinom(6,12,1/6)
cat("P(7<=X<=9):",p_bino,"
")

# Normal P(X>=84)
cat("P(X>=84):",1-pnorm(84,72,15.2),"
")

# Poisson probabilities
cat("P(no car):",dpois(0,5),"
")
cat("P(48<=Y<=50):",ppois(50,50)-ppois(47,50),"
")

# Hypergeometric P(X=3)
cat("P(3 defectives):",dhyper(3,17,233,5),"
")

# Wikipedia usage binomial
n<-31; p<-0.447
barplot(dbinom(0:n,n,p),names=0:n,main="Binomial PMF")
plot(0:n,pbinom(0:n,n,p),type="s",main="Binomial CDF")
cat("Mean:",n*p,"Var:",n*p*(1-p),"
")
