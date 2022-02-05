name_of_func <- function(input1, input2, input3=25){
  result <- input1+input2
  return(result)
}

#Function: groups together set of statements, so that these can run together
#.........without input...........

hello <- function(){
  print('hello')
}
hello()

#________with input
hello <- function(name){
  print(paste('hello',name))
}
hello('Sammy')

#______________

add_num <- function(num1, num2){
  print(num1+num2)
}
add_num(3,20)

#____________

add_num <- function(num1, num2){
  my_sum <- (num1+num2)
  return(my_sum) #return allows to store this value
}
result <- add_num(143,20)
print(result)


#__________SCOPE____scope is limited to a function......means variables defined
#inside the function

times5 <- function(num){
  return (num*5)
}
print(times5(10))

#_________________

times10 <- function(num){
  my.result <- num *10
  return (my.result)
}
my.output <- times10(20)
print(my.output)

#____variables defined outside the function are defined as global variables

v <- 'I am a global variable'
stuff <- 'I am global stuff'

fun <- function(stuff){
  print(v)
  stuff <- 'Reassign stuff inside of this function fun'
  print(stuff)
}
fun(syuff)
print(stuff)


