#testing working with files in R
setwd("C:\\Users\\mrleo\\Downloads")
test <- read.csv(file="hw1_data.csv")
head(test, 2) #prit the frist two lines
nrow(test) #count rows
tail(test, 2) #print the last two lines
test$Ozone[47] #extract the value in the column Ozone row 47
sum(is.na(test$Ozone)) #count all missing values
mean(test$Ozone, na.rm = TRUE) #mean without Na
sampling <- subset(test, Ozone > 31 & Temp > 90, select = c("Ozone","Temp", "Solar.R")) #seleziona un sample di valori: maggiore di 31 in Ozone, Maggiore di 90 in Temp
print(sampling)
second_sample <- subset(sampling, Temp > 90)my
print(second_sample)
mean(second_sample$Solar.R, na.rm= TRUE) #fa la media del sample nella colonna solar R_

third_sample <- subset(test, Month == 6, select = c("Month","Temp"))
print(third_sample)
mean(third_sample$Temp, na.rm = TRUE)

x_sample <- subset(test, Month == 5, select = c("Month","Ozone"))
max(x_sample$Ozone, na.rm = TRUE)


