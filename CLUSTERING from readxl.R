############# CLUSTERING ###############################
# What is clustering 
# This is the method of dividing objects into clusters
# similar between them and are dissimilar to objects in another
# cluster
############### TYPES OF CLUSTERING ###############
# 1. Hierarchical clustering and 2. Partial clustering
########## Application of Clustering ################
# Customer segmentation, Social Networking and city planning
library(readxl)
Sales_data <- read_excel("D:\BSCS\Final Semester\Data Science/Sales
                         data.xlsx",col_types=c("skip","skip",
                                            "text","skip","numeric",
                                            "numeric","numeric","skip",
                                            "skip","skip","skip"))
View(Sales_data)
library(readxl)
Sales_data <- read_excel("D:\BSCS\Final Semester\Data Science/Sales data.xlsx",
                         col_types=c("skip","skip","text","skip",
                                     "numeric","numeric",
                                     "numeric") )
# normalize the data
min.max<-function(x){
  res<-(x-min(x))/(max(x)-min(x))
  return(res)
}
nwed<-data.frame(sapply(Sales_data[,2:4],min.max))
nwed
View(nwed)

# Z - score standardization
z.score<-function(x){
  res<-(x-mean(x))/sd(x)
  return(res)
}
nwed1<-data.frame(sapply(Sales_data[,2:4],z.score))

# Findinding the euclidean distance.
Distance<-dist(nwed1)
print(Distance,digits = 3)

# Plot Dendrogram
Clust1<-hclust(Distance)
plot(Clust1,labels=Sales_data$Rep,hang=-1)
