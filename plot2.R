setwd("~/coursera/data_analysis/project1/ExData_Plotting1")
power <- read.table("../household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE, dec=".")
subSetData <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()