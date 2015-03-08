##Read in full data set
setwd ("C:/Users/Lisa/Documents/Coursera/Course 4 - Exploratory Data Analysis/ExData_Plotting1")
dataFile <- "../data/household_power_consumption.txt" 
dataAll <- read.csv(dataFile, header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE, dec=".") 

##Convert the Date and Time variables to Date/Time classes
datetime <- strptime(paste(dataSubset$Date, dataSubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")  

##Subsetting the data
dataSubset <- dataAll[dataAll$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(dataSubset$Global_active_power)

##Create Plot 1
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") 

##Close devices
dev.off() 
