## read in date/time info in format 'm/d/y h:m:s'
dates <- c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92")
times <- c("23:03:20", "22:29:56", "01:03:30", "18:21:03", "16:56:26")
x <- paste(dates, times)
x
strptime(x, "%m/%d/%y %H:%M:%S")
strptime(x, )
z <- ISOdate(2010, 04, 13, c(0,12)) # midnight and midday UTC
z
as.Date(z) # in UTC
power$Date[1:4]
as.Date(power$Date[1:4])

## read in date/time info in format 'm/d/y h:m:s'
dates <- c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92")
times <- c("23:03:20", "22:29:56", "01:03:30", "18:21:03", "16:56:26")
x <- paste(dates, times)
x
times <- strptime(x, "%m/%d/%y %H:%M:%S")
times

