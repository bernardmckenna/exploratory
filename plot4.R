#Get the relevant data
setwd("C:/Users/Brian McKenna/Documents/1exploratory")
power <- read.csv("household_power_consumption.txt",head=TRUE,sep=";")

select <- (power$Date == "1/2/2007"|power$Date == "2/2/2007")

spower = power[select,]


par(mfrow=c(2,2))

#first plot

dataforgraph1 <- as.numeric(spower$Global_active_power)/1000 
howlong <- length(dataforgraph1)

plot(dataforgraph1,type = "l", ylab = "Global Active  (kilowatts)",
     xaxt ="n", xlab = "",col = "black")

axis(1, at=c(1,howlong/2,howlong), labels = c("Thu", "Fri", "Sat"))

#Second plot
#plot.new()
dataforgraph2 <- as.numeric(spower$Voltage)

plot(dataforgraph2,type = "l", col ="black",ylab = "Voltage", 
     xlab = "datetime", xaxt ="n")

axis(1, at=c(1,howlong/2,howlong), labels = c("Thu", "Fri", "Sat"))

#Third plot
#plot.new()

dataforgraph3a <- as.numeric(spower$Sub_metering_1)
howlong <- length(dataforgraph3a)

plot(dataforgraph3a,type = "l",ylab="Energy sub metering", xlab= "", xaxt = "n", col = "black")

axis(1, at=c(1,howlong/2,howlong), labels = c("Thu", "Fri", "Sat"))

dataforgraph3b <- as.numeric(spower$Sub_metering_2)
lines(dataforgraph3, col = "red")

dataforgraph3c <- as.numeric(spower$Sub_metering_3)
lines(dataforgraph3c, col = "blue")


legend("topright",c("Submetering_1","Submetering_2","Submetering_3"), 
       lty=1, col=c('black', 'red', 'blue'), bty='n', cex=.75)

#fourth plot
#plot.new()
dataforgraph4 <- (as.numeric(spower$Global_reactive_power))/1000

plot(dataforgraph4,type = "l", ylab = "Globa_reactive_power",
     xaxt ="n", xlab = "datetime",col = "black")

axis(1, at=c(1,howlong/2,howlong), labels = c("Thu", "Fri", "Sat"))
