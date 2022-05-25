################## DATA FRAMES ##############################
id <- c(101,102, 103)
names <-c("Bob", "Alice","John")
marks<-c(78.2,59.45,63.85)
students<-data.frame(id,names,marks)
students
students[2,]
students[2:3,]
students[,1]
students[2:3,1:2]
# we use a negative indext to eliminate an element in a data frame.
students[-2,-3]
students$marks
students$marks[3]
# Double square brackets takes the index for the column
students[[3]][2]<-24.00
# Data frames : subset() function
report<-subset(students,marks>60)
report
report1<-subset(students,marks>60 & id<103)
report1
report2<-subset(students,marks>60,select = c(names,marks))
report2
report3<-subset(students,marks>60,select = -names)
report3

############## MATRICES #####################

A<-matrix(c(1,2,3,4,5,6,7,8,9,1), nrow = 3,ncol = 3) # column wise 
A
A<-matrix(c(1,2,3,4,5,6,7,8,9,1),nrow = 3,ncol = 3, byrow = TRUE)
A
t(A)

################ dplyr Package ##############################
library(readxl)
Sales_data <- read_excel("C:/Users/user/Downloads/Sales data.xlsx")
View(Sales_data)
library(dplyr)
# names() this returns all the names of columns in your data frame.
names(Sales_data)

# select() this used to select specified columns in your data frame.
mysales<-select(Sales_data,"Rep","Item")
mysales
mysales<-select(Sales_data,-c(Item,Rep, Region))
mysales

# filter() function
mysales1<-filter(Sales_data, Item>20)
mysales1
mysales1<-filter(Sales_data,Item >20 & Total<100)
mysales1

# arrange() used to reorder rows of a data frame
mysubdata<-arrange(Sales_data, desc(Rep))
mysubdata

head(Sales_data,5) # first five rows
tail(Sales_data,5)# last five rows

# rename()
mydata<-rename(Sales_data, District=Region)
mydata
names(mydata)

# mutate() Adds a new column that are derived from existing ones.