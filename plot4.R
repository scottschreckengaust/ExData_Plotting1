png(filename="plot4.png", width=480, height=480)

par(mfrow=c(2, 2))
plot(x=hpc$dt, y=hpc$Global_active_power, type="l", ylab="Global Active Power", xlab="")
plot(x=hpc$dt, y=hpc$Voltage, type="l", ylab="Voltage", xlab="datetime")

plot(x=hpc$dt, y=hpc$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(x=hpc$dt, y=hpc$Sub_metering_2, col="red")
lines(x=hpc$dt, y=hpc$Sub_metering_3, col="blue")
legend("topright", col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1))

plot(x=hpc$dt, y=hpc$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")



dev.off()