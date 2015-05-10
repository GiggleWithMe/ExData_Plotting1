library(lubridate)
headerslist<-read.table("household_power_consumption.txt",sep=";",nrows=1,colClasses="character")
data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",skip=66637,nrows=2880)
colnames(data)<-headerslist
rm(headerslist)
data$Date<-dmy(data$Date)
data$Time<-hms(data$Time)
data$datetime<-data$Date+data$Time
png(filename="plot2.png",width=480,height=480)
plot(data$Global_active_power ~ data$datetime,type="l",ylab="Global Active Power (kilowatts)",xlab="")
lines(data$Global_active_power~data$datetime)
dev.off()
