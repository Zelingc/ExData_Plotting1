##  plot 3

# Read data to R

 data <- read.table(text = grep("^[1,2]/2/2007", readLines("./project/household_power_consumption.txt"), value = TRUE), sep = ";", na.strings = "?")

 names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

 # convert data and time to specific format

data$Date <- as.Date(data$Date, format = '%d/%m/%Y')

data$DateTime <- as.POSIXct(paste(data$Date, data$Time))

 # plot

 plot(data$DateTime, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')

 lines(data$DateTime, data$Sub_metering_2, col = 'red')

 lines(data$DateTime, data$Sub_metering_3, col = 'blue')

 legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)

  dev.copy(png, file = "plot3.png", height=480, width=480)

 dev.off()
