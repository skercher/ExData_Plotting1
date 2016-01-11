setwd("~/coursera/data_analysis/project1/ExData_Plotting1")
power <- read.table("../household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE, dec=".")
subSetData <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
subMeter1 <- as.numeric(subSetData$Sub_metering_1)
subMeter2 <- as.numeric(subSetData$Sub_metering_2)
subMeter3 <- as.numeric(subSetData$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, subMeter1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMeter2, type="l", col="red")
lines(datetime, subMeter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()