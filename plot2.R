# Plot 2
# convert to Date/Time classes 
dat$Date <- as.Date(dat$Date, format = "%d/%m/%Y")
dat$DateTime <- as.POSIXct(paste(dat$Date, dat$Time))
# open device
if(!file.exists('ExData_Plotting1')) dir.create('ExData_Plotting1')
png(filename = './ExData_Plotting1/plot2.png', width = 480, height = 480, units='px')
# plotting
Sys.setlocale(category = "LC_ALL", locale = "english")
with(dat, plot(DateTime, Global_active_power, type="l", xlab="", 
        ylab="Global Active Power (kilowatts)"))
dev.off()