############# Hierarchical clustering################
# it is useful for visualizing high dimensional data,
# organizes thing that are close into groups.
# Agglomeratives approach (most common)- bottom up
# 1. start with data 2. find closest pairs and put them together
# 3. find the next closet
# 4. Repeat = yields a tree showing order of merging (dendrogram)
# this requires: merging approach that is to say how to merge
# two points, distance metric: calculating distance between points
# continuous- Euclidean distance-sqrt((A1-A2)^2+(B1-B2)^2+...+
# (Z1-Z2)^2)
# continuous - correlation similarity- how correlated two data
# points are.
# binary- Manthattan distance (city block distance)
########### Procedures for Constructing Hierarchical Cluster
############ (hclust function)#######################
# 1. calculate all pair wise distances between all points to 
# see which points are close together.
# that is to say: dist(dat.frame(x=x,y=y)) this returns pair
# wise distances for all of the (x,y) coordinates
# NB: dist() function uses Euclidean distance by default.
# 2. group two closest points from the calculated distances
# and emerge them to a single point
# 3. find the next two closest points and merge them, and
# repeat
# 4. order of clustering is shown in the dendrogram
############# Approaches for Merging Points/ Clusters
# 1. the approach is specified in the argument method="complete"
# or " average" in hclust() function
# 2. average linkage = taking average of the x and y coordinates for 
# both points/clusters (center of mass effectively)
# complete linkage = to measure distance of two clusters, take 
# the two points in the clusters that are the furthest apart.
# NB: two approaches may produce different results so its a good
# idea to use both approaches to validate results.
################ Characteristics of Hierarchical clustering
# Algorithms
# 1. clustering result/plot maybe unstable
# 2. deterministic = running the hclust() function with same
# parameters and the same data will produce the same plot.
# determining how clusters there are (where to cut) may not
# always be clear.
# primarily used for exploratory data analysis, to see over all
# pattern in data if there is any at all.
###################### hclust Example #########################
set.seed(1234)# this is a random number generator
x<-rnorm(12,mean = rep(1:3,each=4), sd=0.2)
print(x)
y<-rnorm(12,mean = rep(c(1,2,1),each=4), sd=0.2)
print(y)
dataFrame<-data.frame(x=x,y=y)# data frame
print(dataFrame)
distxy<-dist(dataFrame)# Euclidean Distance
print(distxy)
hClustering<-hclust(distxy)
print(hClustering)
plot(hClustering)
