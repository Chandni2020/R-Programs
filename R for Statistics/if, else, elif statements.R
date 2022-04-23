# if, else , else if statements..........


#


num <- -4
if (num < 0){
  print('your number is negative')
}


v <- -5
if (v < 0){
  v <- v*-1
  print(v)
}


#if (A){
#  Z
#}

#if (A){
#  Scenario 1
#} else {
#  Scenario 2
#}


v <- 8
if (v < 0){
  v <- v* -1
  print('I have made your object positive, look')
  print(v)
} else{
  print('object is already positive or zero')
}

v <- -7
if (v < 0){
  print('the object is less than zero, i am working on it!')
  print('wait for it ....')
  v <- v* -1
  print('object is now positive')
  print(v)
} else if (v == 0){
  print('object is zero')
} else if ((v > 0) & (v < 12)){
  print('object is positive and less than 12!')
} else{
  print('object is positive and larger than 12')
  print(v)
}


#------------------------EXCERCISE-----------------------------------
# What are the components of an if-else statement? Define the syntax.


#if(condition_expression){
#  statementA
#} else {
#  statementB
#}

#--------------------------EXCERCISE---------------------------------
#Write a statement that prints "Average" if the input is equal to or larger 
#than 1 and less than 60, "Above Average" if the input is equal to or larger
#than 60 and less than 75, and "Excellent" if the input is equal to or larger 
#than 75. For any other value, the statement should print "Please input a 
#number between 1 and 100"


x <- 99
if ((x>=1) & (x<60)){
  print('Average')
  print(x)
} else if((x>= 60) & (x<75)){
  print('Above Average')
  print(x)
}else if ((x>= 75) & (x<=100)){
  print('Excellent')
  print(x)
}else{
  print('Please input a number between 1 and 100')
  print(x)
}

#---------------------EXCERCISE----------------------------------
# Imagine the following: Your mother announced yesteday that she's going 
#to win the lottery. She did it with the casual
# nonchalance of a person who's going to the shop to pick up some pasta. 
#Today is the number draw. 
# If she gets 6 numbers correct, she wins the lottery. If she doesn't get 6 
#numbers correct, she will sit staring 
# at the screen wondering how on earth she did not manage to achive this 
#very simple task.

# Write a statement that will print "Mom wins the lottery!" if the six 
#numbers she guessed matched the lottery numbers,
# and "Mom did not win the lottery." if the numbers do not match.

# Hint: it will be best if you create one object with randomly 
#generated numbers, and another object which you populate
# manually (as if you're playing the lottery), and compare the two. 

# Hint: look into the length() and setdiff() functions



myinputs <- c(32,5,21,15,2,24)

lottery <- sample(1:49, 6, replace = F)

wrongGuesses <- length(setdiff(lottery, myinputs))


if (wrongGuesses == 0){
  print('Mom won the lottery')
  
} else{
  print('Mom did not win the lottery')
  print(myinputs)
  print(lottery)
}

########################################################################

#if, else, else if statements...................

z <- c(1, 0, -3, 5)
w <- 9

if (z < 3){
  print('My parrot sings song')
}


#----------------------------------_________

if (w < 7){
  print('w is less than 7')
}else if (w==6){
  print('w is precisely 6')
} else{
  print('w is more than 7')
}



