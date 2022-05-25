######## MULTIPLE PLOT EXAMPLE ########
# this expression sets up a plot with 1row and 3 columns 
# outer margin
par(mfrow = c(1,3), mar = c(4,4,2,1), oma = c(0,0,2,2))
with(airquality,{
  #here three plots are filled in with their respective titles
  plot(Wind, Ozone, main = "Ozone and Wind")
  plot(Solar.R, Ozone, main = "Ozone and Solar Raditation")
  plot(Temp, Ozone, main = "Ozone and Solar Temperature")
  # this adds a line of text in the outer margin
mtext("Ozone and weather in New York City", outer = T)  
  
})
