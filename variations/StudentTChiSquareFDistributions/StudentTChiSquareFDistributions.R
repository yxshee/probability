# Experiment 7: t, chi-square & F distributions

set.seed(123)
hist(rt(100,99),main="t-dist df=99")

hist(rchisq(100,2),main="Chi-square df=2")
hist(rchisq(100,10),main="Chi-square df=10")
hist(rchisq(100,25),main="Chi-square df=25")

x<-seq(-6,6,length=100)
dens<-sapply(c(1,4,10,30),dt,x)
matplot(x,dens,type="l",lty=1,main="t-density")
legend("topright",legend=c("df=1","4","10","30"),col=1:4,lty=1:4)

cat("95th percentile F(10,20):",qf(0.95,10,20),"
")
cat("Area [0,1.5]:",pf(1.5,10,20),"Area [1.5,Inf]:",1-pf(1.5,10,20),"
")
cat("Quantiles:",qf(c(0.25,0.5,0.75,0.999),10,20),"
")
hist(rf(1000,10,20),main="F-dist samples")
