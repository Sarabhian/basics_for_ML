# Clear R workspace
rm(list = ls() ) 

# Declare a variable to read and store the data frame 
captaincy <- read.csv("CaptaincyData.csv")

# View the stored data frame 
View(captaincy)

##### summary ####
head(captaincy)
summary(captaincy)

# plotting data 
plot(captaincy)

