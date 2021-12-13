# practice code 2 :Data visualization 

### content of code #### 
#1. plotting Histogram
#2. plotting pie chart
#3. plotting bar graph
#4. plotting scattor plot 


# Clear R workspace####
rm(list = ls() ) 

## import data and EDA ####
df=read.csv("bollywood.csv")
head(df)
summary(df)
plot(df)
View(df)
dim(df)

###1. plotting Histogram####
hist(df$BoxOfficeCollection ,
     main="box office collection",
     xlab="In crore.",
     col="skyblue")
####2. plotting pie chart####
count<-table(df$Genre)
View(count )
pie(count, col=rainbow(7),radius=1)
###3. plotting bar graph####
sliced_movies<-df[1:20 ,]
  #View(sliced_movies)
barplot(sliced_movies$YoutubeViews , col="green")
##4. plotting scattor plot####
plot(x=df$BoxOfficeCollection,y=df$Budget,
     col="orange",
     type="p",
     xlim=c(0,300))

