Filepath <- "E:\household_power_consumption.txt"
data <- read.table(Filepath, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#creating  a subset of data with dates we need
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)
#plotting the png with the mentioned dimensions
png("plot1.png", width=480, height=480)
#plotting a histogram
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
#showing the plot 
dev.off()
