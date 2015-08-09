getwd()
setwd("C:/Users/Brian McKenna/Documents/1exploratory")
power <- read.csv("household_power_consumption.txt",head=TRUE,sep=";")
 

                  
head(power)
str(power)

select <- (power$Date == "1/2/2007"|power$Date == "2/2/2007")
sum(select)
spower = power[select,]
head(spower)

a = as.Date("2007-06-22")
b = as.Date("2007-07-22")
d = b-a

head(power$Date)
str(power$Date)

datetime <- paste(power$Date, power$Time)


x1 = "16/12/2006 17:32:06"
x2 = "16/12/2006 17:33:16"
y1 <- strptime(x1, format='%d/%m/%Y %H:%M:%S')
y2 <- strptime(x2, format='%d/%m/%Y %H:%M:%S')
x1
x2

as.numeric(difftime(y1,y2),units = "secs")
