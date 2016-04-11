#read data set
power <- read.table('household_power_consumption.txt', header = T, sep=';', stringsAsFactors = FALSE)
global <- power[power$Date %in% c('1/2/2007', '2/2/2007'), ]
              
#create plot
png('plot1.png', width = 480, height = 480)
hist(as.numeric(global$Global_active_power), col='red', xlab = 'Global Active Power (kilowatss)', main = "Global Active Power" )
dev.off()

