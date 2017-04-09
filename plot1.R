 
 ## plot1
 #  Read data to R

 data <- read.table(text = grep("^[1,2]/2/2007", readLines("./project/household_power_consumption.txt"), value = TRUE), sep = ";", na.strings = "?")

 names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")


 # plot

 hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")


 dev.copy(png, file="plot1.png", height=480, width=480)
 
 dev.off()