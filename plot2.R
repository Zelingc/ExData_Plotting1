# plot 2

data <- read.table(text = grep("^[1,2]/2/2007", readLines("./project/household_power_consumption.txt"), value = TRUE), sep = ";", na.strings = "?")

names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

 # convert data and time to specific format


data$Date <- as.Date(data$Date, format = '%d/%m/%Y')

data$DateTime <- as.POSIXct(paste(data$Date, data$Time))

#plot figure


plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')

dev.copy(png, file="plot2.png", height=480, width=480)

dev.off()