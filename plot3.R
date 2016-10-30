# Plot 3
# open device
if(!file.exists('ExData_Plotting1')) dir.create('ExData_Plotting1')
png(filename = './ExData_Plotting1/plot3.png', width = 480, height = 480, units='px')
# Plotting
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(dat$DateTime, dat$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
lines(dat$DateTime, dat$Sub_metering_2, col = "red")
lines(dat$DateTime, dat$Sub_metering_3, col = "blue")
legend("topright", lty=1, col = c("black", "blue", "red"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()