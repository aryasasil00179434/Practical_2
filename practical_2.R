manager_data1<-read.csv("managers.csv")
View(manager_data1)
str(manager_data1)
manager_data1$Date
convert_date<-as.Date(manager_data1$Date,format =c("%Y-%d-%m","%m/%d/%Y","%Y-%d-%m"))
convert_date
