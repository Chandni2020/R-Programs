#built in R features and functions...
#Seq(): Create sequence.....

x <- seq(0,10,by=2)
print(x)

print(0:10)

print(seq(0,100,by=10))

print(seq(0,24,by=2))


# Sort............

v <- c(1,2,4,5,6,7,15,13,8,10)
print(v)

print(sort(v))

print(sort(v,decreasing = TRUE))

cv <- c('b', 'd', 'a')
print(sort(cv))

cv <- c('c','d','q','f','g','s','z')
print(sort(cv))

cv <- c('G','d','K','f','M','W','z')
print(sort(cv))


cv <- c('G','g','K','k','M','m','z')
print(sort(cv))

v <- 1:10
print(rev(v))  # to reverse the output

str(v) # to know the structure of elements

str(mtcars)

summary(mtcars)

# append();....merge objects together...works on vectors and lists....

v <- 1:10
v2 <- 35:50
print(append(v,v2))

#------checking the data type................
#using......(is.)..notation....

v <- c(1,2,3)
print(is.vector(v))

print(is.data.frame(v))

print(is.data.frame(mtcars))

#...(as.)notation to convert into another data type.....

v <- c(1,2,3)
print(as.list(v))

print(as.matrix(v))













