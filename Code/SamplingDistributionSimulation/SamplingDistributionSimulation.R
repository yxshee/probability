# Experiment 8: PIT & sampling distribution

set.seed(123)
n<-1000; lambda<-2
u<-runif(n); x<--log(u)/lambda
hist(x,main="Exp via PIT",freq=FALSE)
curve(dexp(x,rate=lambda),add=TRUE)

n<-30; k<-1000; mu<-100; sigma<-15
means<-replicate(k,mean(rnorm(n,mu,sigma)))
cat("Emp mean:",mean(means),"Emp var:",var(means),"
")
hist(means,main="Sample means",freq=FALSE)
curve(dnorm(x,mean=mu,sd=sigma/sqrt(n)),add=TRUE)
