rm(list=ls())
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp, method="curl")
unzip(temp) 
unlink(temp)
library(data.table)
hpc <- read.table(file="household_power_consumption.txt", sep=";", na.strings="?", header=TRUE)
hpc$Date <- as.Date(strptime(hpc$Date, format="%d/%m/%Y"))
hpc$dt <- strptime(paste(hpc$Date, hpc$Time), format="%Y-%m-%d %H:%M:%S")
hpc <- hpc[hpc$Date >= '2007-02-01', ]
hpc <- hpc[hpc$Date < '2007-02-03', ]
