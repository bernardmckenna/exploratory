setwd("C:/Users/Brian McKenna/Documents/1exploratory")
power <- read.csv("household_power_consumption.txt",head=TRUE,sep=";")





select <- (power$Date == "1/2/2007"|power$Date == "2/2/2007")

spower = power[select,]

howlong <- length(dataforgraph1)
dataforgraph1 <- as.numeric(spower$Global_active_power)/1000 
plot(dataforgraph,type = "l", ylab = "Global Active  (kilowatts)",
     xaxt ="n", xlab = "", xant = "",col = "black")

axis(1, at=c(1,howlong/2,howlong), labels = c("Thu", "Fri", "Sat"))

dataforgraph2 <- as.numeric(spower$Sub_metering_1)
howlong <- length(dataforgraph2)
plot(dataforgraph2,type = "l",ylab="Energy sub metering", xlab= "", xaxt = "n", col = "black")


axis(1, at=c(1,howlong/2,howlong), labels = c("Thu", "Fri", "Sat"))


dataforgraph3 <- as.numeric(spower$Sub_metering_2)
lines(dataforgraph3, col = "red")

dataforgraph4 <- as.numeric(spower$Sub_metering_3)
lines(dataforgraph4, col = "blue")




legend("topright",c("Submetering_1","Submetering_2","Submetering_3"), 
       lty=1, col=c('black', 'red', 'blue'), bty='n', cex=.75)


