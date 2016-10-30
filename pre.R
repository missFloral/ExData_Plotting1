# download and unzip data
if(!file.exists("data")) dir.create("data")
fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileurl, destfile = "./data/household_power_consumption.zip")
unzip("./data/household_power_consumption.zip", exdir = "./data")

# read data into R
dat <- read.table(text = grep("^[1, 2]/2/2007", 
                  readLines("./data/household_power_consumption.txt"), value = TRUE), 
                  sep = ";", col.names = c("Date", "Time", "Global_active_power", 
                  "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", 
                  "Sub_metering_2", "Sub_metering_3"), na.strings = '?')