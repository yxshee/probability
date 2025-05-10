# Experiment 4: Expectations, moments, random variables

# 1. Expected imperfections
x<-0:4; p<-c(0.41,0.37,0.16,0.05,0.01)
cat("E[X]:",sum(x*p),"
")

# 2. Exponential expectation
f_exp<-function(t)0.1*exp(-0.1*t)
cat("E[T]:",integrate(function(t)t*f_exp(t),0,Inf)$value,"
")

# 3. Net revenue
x<-0:3; p<-c(0.1,0.2,0.2,0.5)
rev<-c(0*12+3*2,1*12+2*2,2*12+1*2,3*12+0*2)
cat("E[Y]:",sum(rev*p),"
")

# 4. Moments for continuous f(x)
f_c<-function(x)0.5*exp(-abs(x))
m1<-integrate(function(x)x*f_c(x),1,10)$value
m2<-integrate(function(x)x^2*f_c(x),1,10)$value
cat("Mean:",m1,"Var:",m2-m1^2,"
")

# 5. Y=X^2 from geometric
p_geom<-function(x)(3/4)*(1/4)^(x-1)
y<-(1:5)^2
pY<-sapply(y,function(yy)sum(p_geom(which((1:5)^2==yy))))
cat("P(Y):",pY,"
")
E<-sum(y*pY); V<-sum((y^2)*pY)-E^2
cat("E[Y]:",E,"Var[Y]:",V,"
")
