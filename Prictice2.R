v <- c(1,2,3,4,4,4)
v 
# Numeric data

n1 <- 15 # double precision by default
n1
typeof (n1)


# character

c1 <- "Pius"
c1 

# Logical
l1 <- TRUE
l1
typeof(l1)

l2 <- F
l2
typeof(l2)

#DATA STRUCTION 
## Vector
v1 <-c(1,2,3,4,5)
?c
v1
is.vector(v1)
v3 <-c(TRUE, TRUE, TRUE, FALSE, FALSE, F)
is.vector(v3)
v4 <-c("Monday", "Tuesday", "Wednesday")
is.vector(v4)
v5 <- c(12,4,5,7,6,89,9)
is.vector(v5)

##MATIX################
?matrix
m1 <- matrix(c(T,T,T,F,F), nrow = 1)
m1

m2 <- matrix(1:2, nrow = 2, ncol = 5)
m2

## ARRAY####
#Give data,then dimension (rows, columns, tables)
a1 <-array(c(1:24), c(4,3,3))
a1
?array

## DATA FRAMES
### created by combining the vectors of the same length
vNumeric <- c(1,2,3)
vCharacter <- c("a", "b", "c")
VLogical <- c(T,F,T)

?cbind
dfa1 <- cbind(vNumeric,vCharacter)
dfa1
dfa <- cbind(vNumeric, vCharacter, VLogical)
dfa  # This is matrix of one data frame
df <- as.data.frame(cbind(vNumeric, vCharacter, VLogical))
df # This makes a data frame with three different data types

##LISTS #####
?list
list1 <- list(01, 02, 03,9)

list1

#CREATING DATA 
x1 <- 1:3
x1

y1 <- 1:9
y1

s1 <- -1:8
s1

# Combining variables
df1 <- cbind.data.frame(x1,y1)
df1 
typeof(df1$x1)
str(df1)
library(datasets)
