##Read in full data set
setwd ("C:/Users/Lisa/Documents/Coursera/Course 4 - Exploratory Data Analysis/ExData_Plotting1")
dataFile <- "../data/household_power_consumption.txt" 
dataAll <- read.csv(dataFile, header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE, dec=".") 

##Convert the Date and Time variables to Date/Time classes
datetime <- strptime(paste(dataSubset$Date, dataSubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")  

##Subsetting the data
dataSubset <- dataAll[dataAll$Date %in% c("1/2/2007","2/2/2007") ,]
subMetering1 <- as.numeric(dataSubset$Sub_metering_1) 
subMetering2 <- as.numeric(dataSubset$Sub_metering_2) 
subMetering3 <- as.numeric(dataSubset$Sub_metering_3)

##Create Plot 3
png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="") 
lines(datetime, subMetering2, type="l", col="red") 
lines(datetime, subMetering3, type="l", col="blue") 
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"), bty="o") 

##Close devices
dev.off() 
