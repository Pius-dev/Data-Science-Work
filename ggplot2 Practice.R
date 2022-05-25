### Prepare the data

## mtcars data sets are used in the examples below.

# Convert cyl column from a numeric to a factor variable
mtcars$cyl <- as.factor(mtcars$cyl)
head(mtcars)


#### Basic scatter plots

library(ggplot2)
# Basic scatter plot
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()
# Change the point size, and shape
ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point(size=2, shape=23)

# Change the point size
ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point(aes(size=qsec))

###### Label points in the scatter plot#####

#The function geom_text() can be used :

ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point() +
  geom_text(label = rownames(mtcars))

###### Add the regression line########

ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point()+
  geom_smooth(method=lm)

# Remove the confidence interval
ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point()+
  geom_smooth(method=lm, se=FALSE)

# Loess method
ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point()+
  geom_smooth()

?loess

#### Change the appearance of points and lines

## This section describes how to change :
  
#1.the color and the shape of points
#2. the line type and color of the regression line
#3. the fill color of the confidence interval

# Change the point colors and shapes
# Change the line type and color
ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point(shape=18, color="blue") +
  geom_smooth(method=lm, se=FALSE, linetype="dashed",
              color= "darkred"
             )
# Change the confidence interval fill color
ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point(shape=18, color="blue")+
  geom_smooth(method=lm,  linetype="dashed",
              color="darkred", fill="blue")


#### Scatter plots with multiple groups ####

## This section describes how to change point colors and shapes automatically and manually.


### 1. Change the point color/shape/size automatically

# Change point shapes by the levels of cyl

ggplot(mtcars, aes(x=wt, y=mpg, shape=cyl)) +
  geom_point()

# Change point shapes and colors
ggplot(mtcars, aes(x=wt, y=mpg, shape=cyl, color=cyl))+
  geom_point()

# Change point shapes, colors and sizes
ggplot(mtcars, aes(x=wt, y=mpg, shape=cyl, color=cyl, size=cyl)) +
  geom_point()

### Add Regression lines
ggplot(mtcars, aes(x=wt, y=mpg, color=cyl,shape=cyl))+
  geom_point()+
  geom_smooth(method = lm)
# Remove condidence intervals
# Extend the regression lines

ggplot(mtcars, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method = lm, se=FALSE, fullrange=TRUE)

# Change point shapes and colors manually
ggplot(mtcars, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(3, 16, 17))+ 
  scale_color_manual(values=c('#999999','#E69F00', '#56B4E9'))+
  theme(legend.position="top")

# Change the point sizes manually
ggplot(mtcars, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
  geom_point(aes(size=cyl)) + 
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(3, 16, 17))+ 
  scale_color_manual(values=c('#999999','#E69F00', '#56B4E9'))+
  scale_size_manual(values=c(2,3,4))+
  theme(legend.position="top")

p <- ggplot(mtcars, aes(x=wt, y=mpg, color=cyl, shape=cyl)) +
  geom_point() + 
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  theme_classic()
# Use brewer color palettes
p+scale_color_brewer(palette="Dark2")
# Use grey scale
p + scale_color_grey()

# Add marginal rugs to a scatter plot
# The function geom_rug() can be used :


# Add marginal rugs
ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point() + geom_rug()

# Change colors
ggplot(mtcars, aes(x=wt, y=mpg, color=cyl)) +
  geom_point() + geom_rug()

# Add marginal rugs using faithful data
ggplot(data = faithful, aes(x=eruptions, y=waiting)) +
  geom_point() + geom_rug()

head(faithful)

# Scatter plots with the 2d density estimation
# The functions geom_density_2d() or stat_density_2d() can be used :

sp <- ggplot(faithful, aes(x=eruptions, y=waiting))+
  geom_point()
sp + geom_density_2d()

#Gradient Color
sp + stat_density_2d(aes(fill = ..level..), geom = "polygon")

# Change the gradient color
sp + stat_density_2d(aes(fill = ..level..), geom = "polygon")+
  scale_fill_gradient(low = "yellow", high = "red")

# Scatter plots with ellipses
# The function stat_ellipse() can be used as follow:

#one ellipse arround all points
ggplot(faithful, aes(x=waiting, y=eruptions)) +
  geom_point()+
  stat_ellipse()

# Ellipse by groups
p <- ggplot(faithful, aes(x=waiting, y=eruptions, color = eruptions >3))+
  geom_point()
p + stat_ellipse()

# Change the type of ellipses: possible values are "t", "norm", "euclid"
p + stat_ellipse(type = "norm")

# Scatter plots with rectangular bin
# 
# The number of observations is counted in each bins and displayed using any of the functions below :
#   
#   geom_bin2d() for adding a heatmap of 2d bin counts
# stat_bin_2d() for counting the number of observation in rectangular bins
# stat_summary_2d() to apply function for 2D rectangular bins



# The data sets diamonds from ggplot2 package is used :
  
  head(diamonds)
  
  diamonds

# Plot

p <- ggplot(diamonds, aes(carat, price))
p + geom_bin2d()

# Change the number of bins
p + geom_bin2d(bins=10)

# Or specify the width of bins
p + geom_bin2d(binwidth=c(1, 1000))





#Scatter plot with marginal density distribution plot

#Step 1/3. Create some data :

set.seed(1234)

x <- c(rnorm(500, mean = -1), rnorm(500, mean = 1.5))
x
y <- c(rnorm(500, mean = 1), rnorm(500, mean = 1.7))
y
group <- as.factor(rep(c(1,2), each=500))
group

df <- data.frame(x, y, group)
head(df)

#     Step 2/3. Create the plots : ####

# scatter plot of x and y variables
# color by groups
scatterPlot <- ggplot(df,aes(x, y, color=group)) + 
  geom_point() + 
  scale_color_manual(values = c('#999999','#E69F00')) + 
  theme(legend.position=c(0,1), legend.justification=c(0,1))
scatterPlot

# Marginal density plot of x (top panel)
xdensity <- ggplot(df, aes(x, fill=group)) + 
  geom_density(alpha=.5) + 
  scale_fill_manual(values = c('#999999','#E69F00')) + 
  theme(legend.position = "none")
xdensity

# Marginal density plot of y (right panel)
ydensity <- ggplot(df, aes(y, fill=group)) + 
  geom_density(alpha=.5) + 
  scale_fill_manual(values = c('#999999','#E69F00')) + 
  theme(legend.position = "none")
ydensity

######## Customized scatter plots ######

# Basic scatter plot
ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point()+
  geom_smooth(method=lm, color="black")+
  labs(title="Miles per gallon \n according to the weight",
       x="Weight (lb/1000)", y = "Miles/(US) gallon")+
  theme_classic()

# Change color/shape by groups
# Remove confidence bands
p <- ggplot(mtcars, aes(x=wt, y=mpg, color=cyl, shape=cyl)) + 
  geom_point()+
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  labs(title="Miles per gallon \n according to the weight",
       x="Weight (lb/1000)", y = "Miles/(US) gallon")
p + theme_classic() 

#### Change colors manually :

# Continuous colors 
p + scale_color_brewer(palette="Paired") + theme_classic()
# Discrete colors
p + scale_color_brewer(palette="Dark2") + theme_minimal()
# Gradient colors
p + scale_color_brewer(palette="Accent") + theme_minimal()


blankPlot <- ggplot()+geom_blank(aes(1,1))+
  theme(plot.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), 
        panel.border = element_blank(),
        panel.background = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.text.x = element_blank(), 
        axis.text.y = element_blank(),
        axis.ticks = element_blank()
  )
install.packages("gridExtra")
