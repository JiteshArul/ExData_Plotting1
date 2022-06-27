##Plot1
datas<-read.csv("household_power_consumption.txt",sep = ";")
datas<-subset(datas,Date %in% c("1/2/2007","2/2/2007"))
datas$Date<-as.Date(datas$Date,format = "%d/%m/%Y")
png("plot1.png",width = 480,height = 480)
hist(x=as.numeric(datas$Global_active_power),main = "Global Active Power",col = "red",xlab = "Global Active Power (kilowatts)")
dev.off()
