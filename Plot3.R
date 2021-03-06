# set your working directory
setwd ("C:/Data Science/ExData")
Power=read.table(file="household_power_consumption.txt",header=TRUE, stringsAsFactors = FALSE, sep=
                   ";")
#head(Power)
#str(Power)
Power2=subset(Power,Date=="1/2/2007" | Date=="2/2/2007")
str(Power2)
Power2$Global_active_power=as.numeric(Power2$Global_active_power)
Power2$Sub_metering_1=as.numeric(Power2$Sub_metering_1)
Power2$Sub_metering_2=as.numeric(Power2$Sub_metering_2)
Power2$Sub_metering_3=as.numeric(Power2$Sub_metering_3)

Power2$datetime=strptime(paste(Power2$Date,Power2$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480,height=480)
plot(Power2$datetime,Power2$Sub_metering_1,type="l", 
     xlab="",ylab="Energy Sub Metering")
lines(Power2$datetime, Power2$Sub_metering_2, col="red" )
lines(Power2$datetime, Power2$Sub_metering_3, col="blue" )
legend("topright",c("Sub Metering1", "Sub Metering2", "Sub Metering3"), 
       lty=1, lwd=2, col=c("black","red","blue"))
dev.off()
