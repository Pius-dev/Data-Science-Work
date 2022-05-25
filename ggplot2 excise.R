############ ggplot2 Plotting System #############################
library(ggplot2)# loads the ggplot2 package.
qplot(displ,hwy,data = mpg,color=drv,shape=drv)
# Adding statistics:geom=c("points","smooth")this adds a smoother
qplot(displ,hwy,data=mpg,geom=c("point","smooth"), method="lm")
# Histogram
qplot(hwy,data = mpg, fill=drv)
# facet this is used to split data according to factor variables.
qplot(displ, hwy, data = mpg, facets = . ~ drv)
qplot(hwy, data = mpg, facets = drv ~ ., binwidth=2)
## ggplot( ) function.
## g+geom_point() this takes information from g object and produces scatterplot.
## +geom_smooth()this adds low S mean curve with confidence interval.
g<-ggplot(data, aes(var1,var2))# initiates call to ggplot and specifies the 
# data frame that will be used.
# aes(var1,var2) specifies aesthetic mapping, or var1 as x varaiable, and 
# var2 as y variable.
# summary(g)  this displays summary of ggplot object.
# print(g) this returns error ("no layer on plot") which means the plot does
# not know how to draw the data yet.
# g + geom_point() this takes information from object and produces scatter plot
# method = "lm" changes the smooth curve to be linear regression
# size = 4, linetype = 3 can be specified to change the size/style of the line
# se = FALSE turns off confidence interval
# - + facet_grid(row ~ col) splits data into subplots by factor variables
# (see facets from qplot())

cutPts<- quantiles(df$cVar, seq(0,1,length=4), na.rm=TRUE) # this creats 
# quantiles where the continuous variable will be cut.
# seq(0,1,length=4) creates 4 quantile points
# na.rm = TRUE removes all NA values

df$newFactor<-cut(df$cVar, cutPts) # creates new categorical /factor variable
# by using the cutpoints

########## annotations ########################
# xlab(), ylab(), lab(), ggtitle() for labels and titles
labs(x=expression("log"*PM[2.5]), y="Nocturnal") # this specifies x and y labels
# expression() is used to produce mathematical expressions
# geom function is used for many options to modify
# theme() used for global changes in presentation.e.g theme(legend.position
# "none") and the standard themes are theme_gray()and theme_bw().
# base_family="Times" this is used to change font to Times

################## aesthetics#########################
# + geom_point(color,size,alpha) this specifies how the points are supposed to 
# be plotted on the graph (style).
# NB: this translates to geom_line()/other forms of plots.
# color = "steelblue" specifies color of the data points.
# aes(color = var1) wrapping color argument this way allows a factor variable to
# be assigned to the data points, thus subsetting it with different colors based 
# on factor variable values.
# size = 4 specifies size of the data points
# alpha = 0.5 specifies transparency of the data points

############# ggplot2 comprehensive example################
# initiates ggplot
library(ggplot2)
g<- ggplot(women,aes(height, weight))
g + geom_point(alpha = 1/3) # adds points
g + facet_wrap(bmicat ~ no2dec, nrow = 2, ncol = 4) # make panels
g + geom_smooth(method = "lm", se = F, col = "steelblue")# adds a smoother
g + theme_bw(base_family = "Avenir", base_size = 10) # change theme
g + labs(x = "height in meteres")
g + labs(y = "weight in kg")
g + labs(title = " Women in USA")
