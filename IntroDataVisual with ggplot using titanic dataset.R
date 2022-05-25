library(ggplot2)
# Load Titanic titancing data for analysis, open in spreadsheet view

titanic <- read.csv("titanic.csv", stringsAsFactors = FALSE)
View(titanic)

# Set up factors
titanic$Pclass <- as.factor(titanic$Pclass)
titanic$Survived <- as.factor(titanic$Survived)
titanic$Sex <- as.factor(titanic$Sex)
titanic$Embarked <- as.factor(titanic$Embarked)