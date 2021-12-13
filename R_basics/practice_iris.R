## Practice code 1 : basics plotting in R 

##### content of the code ####
# 1. summerize Iris data
# 2. plot iris data 
# 3.  customized plot petal vs sepal
# 4. plot std normal distribution curve 


# Clear R workspace####
rm(list = ls() ) 

## load dataset prebuild data in R #### 
library(datasets)

### summarizing data #####

head(iris)
summary(iris)
plot(iris)

#### plotting data  ####
?plot #  help for plot  
#plot(dataset_name$col_name) ... type 1
plot(iris$Species) 
plot(iris$Sepal.Length)
plot(iris) 

#plot(x,y) .... type 2
plot( iris$Species, iris$Sepal.Width) 

### customized iris plot ####
plot(iris$Sepal.Length,iris$Petal.Length,
     col = "red",
     pch = 19 ,
     main= " Iris : sepal length vs.  petal length",
     xlab= "sepal",
     ylab= "petal" )
## std normal distribution curve####
plot(dnorm ,-3, +3,
     col= "green",
     lwd= 5,
     main= " Sandard Nornal Distribution",
     xlab= "Z-score",
     ylab= "Density")

# clean up #####
dev.off()  # clears plot 
cat("\014") # clear console

