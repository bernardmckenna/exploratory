setwd("C:/Users/Brian McKenna/Documents/1exploratory")
power <- read.csv("household_power_consumption.txt",head=TRUE,sep=";")


select <- (power$Date == "1/2/2007"|power$Date == "2/2/2007")

spower = power[select,]

howlong <- length(dataforgraph1)
dataforhist <- as.numeric(spower$Global_active_power)/1000


hist(dataforhist, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
