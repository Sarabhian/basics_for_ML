# practice code 0 : Introduction to R

##### content of the code ####
#1. basic arithmatic operations and data types 
#2. logical operations 
#3. assigning variables and understanding their types
#4. writing functions and equations 
#5. creating matrix and use of t, c,cbind, ...
#6. read and write dataframes


# Clear R workspace####
rm(list = ls() ) 

##1. basic arithmatic operations ####

2+2 
288*122
12/3
12\3  # won't work 
12%3  # won't work
2^3
2**3

class(2+5i)
typeof("")

###2. logical operations   ####
2> 3 
3< 4 
3<= 4
4>= 5
7==6 
7!= 8
-3== ~3
a= ~3 
print(a)
typeof(3)
7~=8   # won't work 

####3. assigning variables ####
a= 3 
b<-4
typeof(a)
typeof(b)
c=a+b
d=sin(a)*cos(b)

###4. writing functions and equations and their plots ####
x= seq(-10,10,0.1)
y=seq(-10,10,0.1)
plot(x,y)

z=a*x^2 +b*x +c
plot(z)
plot(z,
     col= 'blue',
     xlim=c(0,200),
     ylim= c(0, 300) )
w= a*exp(x)
plot(w,col='red',type='l')

##5. creating matrix and use of c,cbind,rbind ...####

# use of 'c'
x<- c(1,2,3,4,5,6,7,8,9)  # sequence  
print(x)

# use of 'matrix'
nrow=3 
ncol=3
y<- matrix(x, nrow, ncol, byrow=TRUE) # prints matrix elements by row 
print(y)

### use of 'cbind' 

## column concatination 
x= c(2, 3, 4 ) ; 
y=c( 4,5,6)
z=cbind(x,y)  
print(z)

#use of rbind 

## row concatination 
w=cbind(t(x),t(y))
print(w)
v=rbind(x,y)
print(v)
# use of t(), diag(), 
## transpose
print(t(z))
## diagonal matrix
diag(4)

#6. reading datasets and creating dataframes ####
df<- read.csv("C:/Users/abhij/Desktop/t/TY/PSE/csv file.csv")
View(df) 
columns <- c('Name','Mis', 'Branch' ,'Year')
r1<-c("Abhijeet",111909002
      ,"Instru", "TY")
r2<-c("Shreyash",111907031,"Extc","TY")
r3<-c("Aaradhya",111909001,"Instru","SY")
rows<-rbind(r1,r2,r3)
print(rows)

df<-rbind(columns,rows)
print(df)

## saving df as Rdata
save(df,file="df.Rdata")
## saving file as csv
save(df,file="df.csv")
##writing file 
write.csv(df,'df1.csv' ,row.names=FALSE, columns.names=FALSE) 

df1=read.csv("df1.csv")
View(df1)

