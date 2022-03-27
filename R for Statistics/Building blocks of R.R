####  Characters and logicals
#Corecion rules in R
#Functions in R
#Functions and Arguments
# Building a function in R


char <- c('R', 'for','programming')
print(typeof(char))

char2 <- c('the answer', 'the universe', '45')
print(char2)

#here '45' is a string not an integer now....

# logical vectors...TRUE or FALSE..always in capital letter


spock<- c(FALSE, TRUE, F,F,T, FALSE)

print(typeof(spock))

# Complex and Raw Integers.....

#?is.complex()
#is.raw()

# Excercise Problems......................
employee_name <- c('Belinda Johnes', 'Maria Delar','Math Smith')

print(employee_name)
#print(typeof(emloyee_name))

salary <- c(3000, NA, 4000, 1000)
print(salary)

#print(typeof(salary))


employees <- c(employee_name, salary)
print(employees)

# COERCION rules in R.........
#Rule1. if a vector has even one string element, all other
#elements will be converted to strings....

char3 <- c('the answer', 'the universe', 45)
print(char3)

#Rule2. if a vector has only logical and numeric elements, all 
#logicals will be converted to numbers...
#like T --> 1 and F-->0

spock<- c(FALSE, TRUE, F,F,T, FALSE,1,0)
print(spock)

#Excercise............

yearly_bonus <- c(T,T,T,F,T,T,T,T,T,T)

employees1 <- c(employees, yearly_bonus)
print(employees1)

coerce.check <- c(salary, yearly_bonus)
print(coerce.check)

#--------------------------
print(round(2,4271))

print(mean(1:10))

print(mean(answer))

print(round(mean(answer)))

b <- mean(1:10)
print(b)

#excercise..............
#Create a variable called years_of_experience that 
#contains the following values:  8, 10, 10, 1, 10, 10, 8, 12, 1, 12.

#Use the commands listed below to do the following operations:
  
#Find the sum of the elements in years_of_experience

#Find the average of the elements in years_of_experience

#Find the median value (the middle value) of the elements in 
#years_of_experience

#Get R to return the length of the years_of_experience  variable

#Find the standard deviation of the values in years_of_experience

#Find the standard deviation of the elements in years_of_experience, then round
#it; do it in a single command

#Find the standard deviation of the elements in years_of_experience, then round
#it, then specifically ask R to print it; do it in a single command




years_of_experience <- c(8,10,10,1,10,10,8,12,1,12)

print(sum(years_of_experience))
print(mean(years_of_experience))
print(median(years_of_experience))

print(length(years_of_experience))

print(sd(years_of_experience))
x <- sd(years_of_experience)
print(round(x))








