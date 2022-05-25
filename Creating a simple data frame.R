# Creating a simple data frame
# EXE 2

## a
films <- data.frame(Title=c("Gangs of New York", "No Country for Old Men", "Asuraguru", "Deliver Us from Evil"),
                     Year=c(2002, 2007, 2020, 2020),
                     Director=c("Martin Scorsese", "Joel Coen", "A.Raajdheep", "Hong Wong-Chan"),
                     Country=c("USA", "France", "India", "South Korea")
                    
                    )

films


## b
films2 <- data.frame(Title = c('Parasite'),
  Director =c("Bong Joon-ho"),
  Year=  c(2019),
  Country=c("Korean")
)
films2

## c
?rbind
myDataFrame <- rbind(films, films2)

myDataFrame

## d
?sort()

Sorting <- sort(myDataFrame$Title, decreasing = T)
View(Sorting)
Sorting






