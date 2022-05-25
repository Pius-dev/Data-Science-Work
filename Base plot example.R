####### BASE PLOT EXAMPLE #####
library(datasets) # load datasets package
# type = "n"  sets up the plot and does not fill it with data
View(airquality)
with(airquality,plot(Wind, Ozone, main = "Ozone and wind in New York", type ="n"))
with(subset(airquality, Month == 5), points(Wind,Ozone,col = "blue"))
with(subset(airquality, Month != 5), points(Wind,Ozone,col = "red"))
legend("topright", pch = 1, col = c("blue", "red"), legend = c("May", "Other Months"))
model <- lm(Ozone ~ Wind,airquality)
abline(model, lwd =2)
