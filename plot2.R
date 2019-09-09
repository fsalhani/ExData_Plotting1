#
# plot2.R
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
png(filename = "plot2.png", width = 480, height = 480)

# Create the plot
plot(x = df$dateTime, y = df$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

# Close the device
dev.off()
