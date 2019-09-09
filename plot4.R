#
# plot4.R
#
# Author: Fernando Salhani
# Date Created: 2019-09-08
#
# Data Science Specialization Coursera
# Course: Exploratory Data Analysis
# Course Project 1
# Peer-graded Assignment
#

# Read the dataset
# Obs: I created a subset of the data with just the desired days
# so that I could have it in the repository
df <- read.table("data/household_power_consumption.txt", header = TRUE, sep = ";")

# Convert date and time to datetime
df$dateTime <- as.POSIXct(strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S"))

# Open the png device
png(filename = "plot4.png", width = 480, height = 480)

# Adjust mfcol to create 4 plots
par(mfcol = c(2,2))

# Create the plot at the top left
plot(x = df$dateTime, y = df$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")


# Create the plot at the bottom left
plot(x = df$dateTime, y = df$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
lines(x = df$dateTime, y = df$Sub_metering_1)
lines(x = df$dateTime, y = df$Sub_metering_2, col = "Red")
lines(x = df$dateTime, y = df$Sub_metering_3, col = "Blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c(1, "Red", "Blue"), bty = "n")

# Create the plot at the top right
plot(x = df$dateTime, y = df$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

# Create the plot at the bottom right
plot(x = df$dateTime, y = df$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")

# Close the device
dev.off()
