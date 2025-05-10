# Experiment 6: Joint probability functions

install.packages("cubature",repos="https://cloud.r-project.org")
library(cubature)

# Continuous joint PDF
f<-function(x,y)2*(2*x+3*y)/5
norm<-adaptIntegrate(function(v)f(v[1],v[2]),lowerLimit=c(0,0),upperLimit=c(1,1))$integral
cat("Normalization:",norm,"
")
g<-function(x)integrate(function(y)f(x,y),0,1)$value
h<-function(y)integrate(function(x)f(x,y),0,1)$value
cat("g(1):",g(1),"h(0):",h(0),"
")
cat("E[XY]:",adaptIntegrate(function(v)v[1]*v[2]*f(v[1],v[2]),c(0,0),c(1,1))$integral,"
")

# Discrete joint PMF
pmf<-outer(0:3,0:2, function(x,y)(x+y)/30)
rownames(pmf)<-0:3; colnames(pmf)<-0:2
print(pmf); cat("Sum:",sum(pmf),"
")
g_x<-apply(pmf,1,sum); h_y<-apply(pmf,2,sum)
cat("g(x):",g_x,"h(y):",h_y,"
")
cat("P(X=0|Y=1):",pmf["0","1"]/sum(pmf[,"1"]),"
")
