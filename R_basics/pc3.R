# practice code 3 : data manipulation 

### content of code ####
#1.filter 
#2. arrange
#3. rename 
#4. mutate
#5.ggplot

# Clear R workspace####
rm(list = ls() ) 
library(dplyr)
## import data and EDA ####
df=read.csv("bollywood.csv")
View(df)

#1. use of filter####
first10 <-filter(df[1:10 ,]) # first 10 movies  row
View(first10)

comedy_movies <-filter(df, Genre=="Comedy")
View(comedy_movies)

romcom_movies <-filter(df, Genre%in%c("Comedy","Romance"))
View(romcom_movies)

#2 use of arrange ####
expensiveMovies <- arrange(df ,desc(Budget))
View(expensiveMovies)                       

youtubedata <- select(df, MovieName ,Genre,YoutubeViews ,YoutubeLikes)
View(youtubedata)

#3 use of rename ####
dfy<-rename(df,Ytlikes="YoutubeLikes" )
View(dfy)
#4 use of mutate####
dfy1 <- mutate(df,YoutubeImpression= YoutubeLikes-YoutubeDislikes)
View(dfy1)
plot(df)
#5. use of ggplot ####
library(ggplot2)
ggplot( data= df, mapping = aes(x= Budget ,y= YoutubeLikes)) +geom_point()
ggplot( data= df, mapping = aes(x= Budget ,y= YoutubeLikes)) +geom_boxplot()

