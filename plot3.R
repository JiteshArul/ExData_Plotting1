##Plot3
datas<-read.csv("household_power_consumption.txt",sep = ";")
data1 <- subset(datas, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)
png("plot3.png",width = 480,height = 480)
with(data1,{
  plot(Sub_metering_1~Datetime,type="l",col="black",ylab = "Energy Sub metering" ,xlab="")
  lines(Sub_metering_2~Datetime,col="red")
  lines(Sub_metering_3~Datetime,col="blue")
  legend("topright",col = c("black","red","blue"),lty = 1,lwd = 2,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
})
dev.off()
