
library(readxl)
Sales_data <- read_excel("E:/BSCS/Final Semester/Data Science/Sales data.xlsx")
View(Sales_data)

str(Sales_data)

# To find the number of pencils, First we create a smaller data frame from copy of
# sales containing only pencils
# we use square brackets to extra out a particular data using $ sign
Pencils <- Sales_data[Sales_data$Item == "Pencil",]
View(Pencils)
# Fiind the total sales
Totalpencils <- sum(Pencils$Units)
Totalpencils
