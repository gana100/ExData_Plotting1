## Get full dataset
data_full <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')
data_full$Date <- as.Date(data_full$Date, format = "%d/%m/%Y")

## Get Subset of the data for the given date range
data <- subset(data_full, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_full)

# Generate Plot 1
png(filename = "plot1.png",
    width = 480, height = 480)
hist(data$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")
dev.off()