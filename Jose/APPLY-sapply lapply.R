#to aAPPLY function over a vector or list......

print(sample(x = 1:10,1))

print(sample(x = 1:100,3))

v <- c(1,2,3,4,5)

addrand <- function(x){
  ran <- sample(1:100,1)
  return(x+ran)
}
print(addrand(10))

#---------------------------------------------

v <- c(1,2,3,4,5)

addrand <- function(x){
  ran <- sample(1:200,1)
  return(x+ran)
}
result <- lapply(v,addrand)#lapply to get a list
print(result)

result <- sapply(v,addrand)#sapply to get a simple result like vector or matrix
print(result)


#----------------------------------------------
v <- 1:15

times2 <- function(num){
  return(num*2)
}
print(v)
result <- sapply(v,times2)
print(result)

#----------------------------------------------------

# Anonymous functions:.........

v <- 1:20

result <- (sapply(v,function(num){num*3}))

print(result)

#-----------------------------------
#APPLY with multiple inputs........

v <- 1:5

add_choice <- function(num, choice){
  return(num+choice)
}
print(add_choice(2,10))

#to apply addchoice numbers to every single element of vector.....

print(sapply(v,add_choice, choice=100))

print(lapply(v,add_choice, choice=100))



