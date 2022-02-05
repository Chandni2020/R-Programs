#Create a function that takes in a name as a string argument, 
#and prints out "Hello name"

hello_you <- function(name){
  print(paste('Hello', name))
}
hello_you('Sam')


#_________________________
#Create a function that takes in a name as a string argument and 
#returns a string of the form - "Hello name"

hello_you2 <- function(name){
  return(paste('Hello', name))
}
#hello_you2('Samy')
print(hello_you2('Samy'))


#-------------------------------
#Create a function that will return the product of two integers.

prod <- function(num1,num2){
  return(num1*num2)
}
print(prod(3,4))

#..........................
#Create a function that accepts two arguments, an integer and a 
#vector of integers. It returns TRUE if the integer is present in 
#the vector, otherwise it returns FALSE. Make sure you pay careful 
#attention to your placement of the return(FALSE) line in your 
#function!

num_check <- function(num,v){
  for(item in v){
    if (item == num){
      return(TRUE)
    }
  }
  return(FALSE)
}

print(num_check(2,c(1,3,4)))
#------------------------------------
#Create a function that accepts two arguments, an integer and a 
#vector of integers. It returns the count of the number of 
#occurences of the integer in the input vector.

num_count <- function(num,v){
  count <- 0
  for(item in v){
    if(item == num){
      count = count + 1
    }
  }
  return(count)
}
print(num_count(2,c(1,2,3,4,5,2,3,2,2,2,2)))

#___________-----------------------------------

# We want to ship bars of aluminum. We will create a function that
#accepts an integer representing the requested kilograms of aluminum 
#for the package to be shipped. To fullfill these order, we have 
#small bars (1 kilogram each) and big bars (5 kilograms each). 
#Return the least number of bars needed.

#For example, a load of 6 kg requires a minimum of two bars 
#(1 5kg bars and 1 1kg bars). A load of 17 kg requires a minimum 
#of 5 bars (3 5kg bars and 2 1kg bars).

# before writing code, we should have following idea in our mind:
# how many 5kg bars can we use?
#how many 1kg bars do we used to fill the gap.
# how many times does 5 go into required load number
#the remainder will be the number of 1kg bars


bar_count <- function(pack){
  #pack is the kg load to fill up
  amount.of.ones <- pack %% 5
  amount.of.fives <- (pack - amount.of.ones)/5
  return(amount.of.ones+amount.of.fives)
}
print(bar_count(49))

#...................................................

#Create a function that accepts 3 integer values and returns their
#sum. However, if an integer value is evenly divisible by 3, then 
#it does not count towards the sum. Return zero if all numbers 
#are evenly divisible by 3. Hint: You may want to use the 
#append() function.

summer <- function(a,b,c){
  out <- c(0)
  
  if (a%%3 !=0){
    out <- append(a,out)
  }#means append 'a' to out, or we can say add 'a' to out.
  
  if (b%%3 !=0){
    out <- append(b,out)
  }
  
  if (c%%3 !=0){
    out <- append(c,out)
  }
  return(sum(out))
}
print(summer(2,1,8))
print(summer(3,6,9))
print(summer(2,5,12))

#Create a function that will return TRUE if an input integer is prime.
#Otherwise, return FALSE. You may want to look into the any() function. 

prime_check <- function(num){
  if (num==2){
    return(TRUE)
  }
  for(x in 2:(num-1)){
    if(num%%x == 0){
      return(FALSE)
    }
  }
  return(TRUE)
}
print(prime_check(293333333123457))

#......OR another method.............------------------------------

is.prime <- function(number) {
  if (number <= 1) {
    return (FALSE)
  } else if (number <= 3) {
    return (TRUE)
  }
  
  if (number %% 2 == 0 || number %% 3 == 0) {
    return (FALSE)
  }
  
  i <- 5
  while (i*i <= number) {
    if (number %% i == 0 || number %% (i+2) == 0) {
      return (FALSE)
    }
    i = i + 6
  }
  return (TRUE)
}

print(is.prime(79))