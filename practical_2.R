manager_data1<-read.csv("managers.csv")
View(manager_data1)
str(manager_data1)
manager_data1$Date
convert_date<-as.Date(manager_data1$Date,format =c("%Y-%d-%m","%m/%d/%Y","%Y-%d-%m"))
convert_date
manager_data1$
Date<-convert_date
manager_data1
#between
startDate<-as.Date("2018-10-15")
endDate<-as.Date("2018-11-18")
class(startDate)
class(endDate)
manager_data1[manager_data1$Date>=startDate & manager_data1$Date<=endDate,]
new_df<-manager_data1[,c('Q3','Q4')]
new_df
#// 
help('%n%')
new_df1<-names(manager_data1) %in% c("Q3","Q4")
new_df1
n2<-manager_data1[(new_df1)]
n2

#names of columns
names(manager_data1)
#@ conditions
attach(manager_data1)
new_data<-subset(manager_data1,Age>=35|Age<24,select = c(Q1,Q2,Q3,Q4))
new_data
detach(manager_data1)
attach(manager_data1)
new_data<-subset(manager_data1,Gender=='M'& Age>25,select = Gender:Q4)
new_data

#extracting the dataset 
my_sample<-manager_data1[sample(2:nrow(manager_data1),3,replace=FALSE),]
my_sample
my_sample1<-manager_data1[sample(2:nrow(manager_data1),10,replace=TRUE),]
my_sample1
write.csv(my_sample1,file = "random sample.csv")

attach(manager_data1)
newdata2<-manager_data1[order(Age),]
newdata2
newdata3<-manager_data1[order(Gender,Age),]
newdata3
detach(manager_data1)
