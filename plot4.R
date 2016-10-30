# Plot 4
# open device
if(!file.exists('ExData_Plotting1')) dir.create('ExData_Plotting1')
png(filename = './ExData_Plotting1/plot4.png', width = 480, height = 480, units='px')
# Plotting
Sys.setlocale(category = "LC_ALL", locale = "english")
par(mfrow = c(2, 2))

plot(dat$DateTime, dat$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

plot(dat$DateTime, dat$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")

plot(dat$DateTime, dat$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
lines(dat$DateTime, dat$Sub_metering_2, col = "red")
lines(dat$DateTime, dat$Sub_metering_3, col = "blue")
legend("topright", lty = 1, col = c("black", "blue", "red"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(dat$DateTime, dat$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")

dev.off()