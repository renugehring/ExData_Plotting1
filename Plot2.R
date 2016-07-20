# set your working directory
setwd ("C:/Data Science/ExData")
Power=read.table(file="household_power_consumption.txt",header=TRUE, stringsAsFactors = FALSE, sep=
                   ";")
#head(Power)
#str(Power)
Power2=subset(Power,Date=="1/2/2007" | Date=="2/2/2007")
str(Power2)
Power2$Global_active_power=as.numeric(Power2$Global_active_power)
