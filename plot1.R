#
# plot1.R
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

# Open the png device
png(filename = "plot1.png", width = 480, height = 480)

# Create the plot
hist(df$Global_active_power, col = "Red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

# Close the device
dev.off()
