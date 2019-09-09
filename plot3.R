#
# plot3.R
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
png(filename = "plot3.png", width = 480, height = 480)

# Create the plot
plot(x = df$dateTime, y = df$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
lines(x = df$dateTime, y = df$Sub_metering_1)
lines(x = df$dateTime, y = df$Sub_metering_2, col = "Red")
lines(x = df$dateTime, y = df$Sub_metering_3, col = "Blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c(1, "Red", "Blue"))

# Close the device
dev.off()
