# sequencing and rep


# i
?seq()
myVector1 <- seq(1, 12, by=0.5) 
myVector1

## ii
rep(myVector1, 2)

myVector2 <- seq(1:10)^3 
myVector2

### iii
myVector3 <- rep(c(1, -1),5)*(rep(1,10)/seq(1:10))
myVector3

#### iv
myVector4 <- seq(1,49)* rep(c(1,0), length.out = 49)
myVector4

##### v
myVector5 <- seq(1:20)
cumsum(myVector5)
?cumsum

###### vi

myVector6 <- seq(1:10)
myVector6 <- rep(myVector6, 1:10)
myVector6
