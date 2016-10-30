# Plot 1
# Open device
if(!file.exists('ExData_Plotting1')) dir.create('ExData_Plotting1')
png(filename = './ExData_Plotting1/plot1.png', width = 480, height = 480, units='px')
# ploting
hist(dat$Global_active_power, main = "Global Active Power", 
        xlab="Global Active Power (kilowatts)", col="red")
dev.off()