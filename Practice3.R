library(datasets) # load inbuilt datasets

#summary 
head(iris) # shows the first six lines of iris
plot(iris) # plot a scatter plot matrix
plot(iris$Species) # plotting categorical variables
plot(iris$Sepal.Length) # this is a plot of a quantitative variable
plot(iris$Sepal.Length, iris$Species)
# We always use $ sign when we want to extract out aparticular dataset

#Quantitative and Categorical 
plot(iris$Sepal.Length, iris$Sepal.Width)
#plot with options 
plot(iris$Petal.Length, iris$Petal.Width,
     col= "red",
     pch = 19,
     main = "Iris: Petal length Vs Petal width",
     xlab = "Petal Length",
     ylab = "Petal width") 

# Import another dataset
library(datasets)
head(mtcars)
plot(mtcars)

barplot(mtcars$cyl)

cylinders <- table(mtcars$cyl) # creating a table

barplot(cylinders) # bar chart
plot(cylinders)

#BASIC HISTOGRAM
library(datasets)

hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)
?par
par(mfrow = c(3,1))
hist(iris$Petal.Width[iris$Species == "Setesa"], 
     xlim = c(0,3),
     breaks = 9,
     main =  "Petal width for Setasa",
     xlab = " ",
     col = "red"
     )

hist(iris$Petal.Width[iris$Species == "Virginica"], 
     xlim = c(0,3),
     breaks = 9,
     main =  "Petal width for virginica",
     xlab = " ",
     col = "yellow"
)


hist(iris$Petal.Width[iris$Species == "Versicolor"], 
     xlim = c(0,3),
     breaks = 9,
     main =  "Petal width for Versicolor",
     xlab = " ",
     col = "purple"
)

# SCATTER PLOTS: They are  used fir visualization  if there is  
# association between two quantative variables. ie linear association,
# consistency spread, outliers

library(datasets)

hist(mtcars$wt)
hist(mtcars$mpg)

plot(mtcars$wt, mtcars$mpg)
# add some plotting
plot(mtcars$wt, mtcars$mpg,
     pch = 19,
     cex = 1.5,
     col = "purple",
     main = "MPG as a Function of weight of cars",
     xlab = "Weight (in 1000 pounds)",
     ylab = "MPG"
     )











