setwd("~/coursera/data_analysis/project1/ExData_Plotting1")
power <- read.table("../household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors=FALSE, dec=".")
subSetData <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower,  xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power",)
dev.off()