headerslist<-read.table("household_power_consumption.txt",sep=";",nrows=1,colClasses="character")
data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",skip=66637,nrows=2880)
colnames(data)<-headerslist
rm(headerslist)
png(filename="plot1.png",width=480,height=480)
hist(data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
