setwd("C:/Users/Brian McKenna/Documents/1exploratory")
power <- read.csv("household_power_consumption.txt",head=TRUE,sep=";")


select <- (power$Date == "1/2/2007"|power$Date == "2/2/2007")

spower = power[select,]


dataforgraph2 <- as.numeric(spower$Global_active_power )
howlong <- length(dataforgraph2)

plot(dataforgraph2,type = "l", col ="black",ylab = "Global Active Power (kilowatts)", 
     xlab = "", xaxt ="n")

axis(1, at=c(1,howlong/2,howlong), labels = c("Thu", "Fri", "Sat"))


