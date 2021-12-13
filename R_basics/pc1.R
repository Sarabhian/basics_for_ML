# practice code 2 : Basic Statistics 

##### content of the code ####
#1. creating randm sample data
#2. finding mean,trimmed mean , median , mode , varience ,standard deviation,
#3. finding standard error , min , max, range , quartile range , IQR
#4. ploting frequency polygon
#5. ploting distribution curve of created random sample data 

# Clear R workspace####
rm(list = ls() ) 

##1. creating vector and finding sample length#### 
X= sample(x=0:50 , size=1000 , replace=TRUE)
n=length(X)
View(X)
###2. mean ,median , mode , std, varience , ####

m<-mean(X) ;m
median(X)    
mode(X)

mean(X ,trim=0.20)
var(X)
s<-sd(X) ; s

####3. finding standard error , min , max, range , quartile range , IQR####
se<- sd(X)/sqrt(n) # standar error

min(X)
max(X)
range(X)
quantile(X,c(0.25,0.5,0.75))
IQR(X) 

###4. ploting frequency polygon####
xlen=seq(0,50,length.out=1000)
plot(xlen,X,type="l")
polygon(c(-1,xlen,50),c(0,X,0),col="red")

##5. ploting distribution curve of created random sample data ####
X=X[order(X)]  # sorting X in ascending order
View(X)
d=dnorm(X,m,s)
View(d)

plot(xlen,d,
     
     type="l",
     col= "blue",
     lwd= 1,
     main= " Sandard Nornal Distribution",
     xlab= "Z-score",
     ylab= "Density" )

