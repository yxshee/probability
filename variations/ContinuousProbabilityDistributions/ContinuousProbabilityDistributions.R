# Experiment 5: Continuous distributions

# Uniform(0,60)
cat("P(X>45):",1-punif(45,0,60),"
")
cat("P(20<X<30):",punif(30,0,60)-punif(20,0,60),"
")

# Exponential(rate=0.5)
cat("Density at 3:",dexp(3,0.5),"
")
curve(dexp(x,0.5),0,5,main="PDF Exp")
cat("P(X<=3):",pexp(3,0.5),"
")
curve(pexp(x,0.5),0,5,main="CDF Exp")
hist(rexp(1000,0.5),main="Simulated Exp",xlab="x")

# Gamma(shape=2,rate=1/3)
cat("P(X>=1):",1-pgamma(1,2,1/3),"
")
cat("Quantile (0.7):",qgamma(0.7,2,1/3),"
")
