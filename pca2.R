library(datasets)
View(iris)
head(iris)
str(iris)

# carry out pca on the data
iris.pca<-iris[,1:4]
iris.pca<-princomp(iris, cor = TRUE) # 
iris.pca<-prcomp(iris[,1:4], scale. = TRUE)
summary(iris.pca)
plot(iris.pca, type= "l")
# eigenvectors<-iris.pca$loadings for the case of princomp()
eigenvectors<-iris.pca$rotation
eigenvectors
eigenvalues<-iris.pca$sdev*iris.pca$sdev
eigenvalues
iris.pca$x
# combine the pc scores with the original dataset and create
# a plot to show us how the pc have enabled us to group
# the data together.
iris.x<-cbind(iris,iris.pca$x[,1:2])
iris.x
# We use the ggplot2 package to visualize our pcs
library(ggplot2)
ggplot(iris.x,aes(PC1,PC2,col=Species,fill=Species))+stat_ellipse(geom = "polygon", col="black",alpha=0.8)+geom_point(shape=21,col="black")
