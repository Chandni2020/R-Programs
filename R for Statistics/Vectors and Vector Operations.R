# Basic Vectors Arithmetic......

#consider two vectors:vec and vic.....
vec <- c(1,2,3)
vic <- c(11,12,13)


print (vec+vic)
print (vec-vic)


print (vec*vic)
print (vec/vic)

print(mean(vec))
print(median(vec))
print(sd(vec))


print(sum(vic))
print(prod(vic))

print(min(vec))
print(max(vec))

# vector recycling..........
#it means if two vetors have different lenghts..
#like in vec and vic , both had 3 elements ...
#if one has 5 elements and other have 10 elements...
#then, 'R' will repeat the elements of shorter vector...

# Excercise.................
#Create the following two vectors:

#A vector called weight, storing the values: 
#71, 67, 83, 67

#A vector called height, storing the values: 
#1.75, 1.81, 1.78, 1.82, 1.97, 2.12, 1.75

weight <- c(71,67,83,67)
height <- c(1.75, 1.81, 1.78, 1.82, 1.97, 2.12, 1.75)

x<-(height^2)
print(x)
bmi <- (weight/ x)
print(bmi)


#---------------Naming a vector in R............
age <- c(23,24,26,27)
print(attributes(age))
print(names(age))

names(age) <- c('Jon', 'Sina', 'Lee', 'Gur')
print(age)

print(attributes(age))
# attributes, will tell if the name is assigned or not..
print(names(age))

#to rename a vector, if you made a mistake

names(age) <- c('Jon Marry', 'Sina Singh', 'Lee Kaur', 'Gur singh')

print(age)


names(age) <- NULL
print(age)
print(attributes(age))

# to remove attributes, assign names to NULL...and  then check 
#its attribute...
#--------------------------------------------------------------
#.......Excercise............
employee_names  <- c("Belinda Johnes","Maria Delar", "Math Smith", "Matt Williams", "Robert Mathews",
                     "Julia Walters", "Andrea Cheng", "July Horitz", "Danielle Muller", "Esteban Lugo")
salary <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)
print(employee_names)#from previous lectures
print(salary)


#Assign a name to each element from the salary vector that corresponds to a 
#character from the employee_names vector.
#Is there another command you can use to check if the salary object has names 
#assigned to it?
#Check the attributes of the salary element.
#
names(salary) <- employee_names
print(attributes(salary))
print(names(salary))
print(salary)

#Remove the names.
names(salary) <- NULL
print(salary)


#Can you think of another way to assign names to the salary object?

salary  <- c("Belinda Johnes" = 3000, "Maria Delar" = NA, "Math Smith" = NA,
             "Matt Williams" = NA, "Robert Mathews" = NA,  "Julia Walters" = 4000, 
             "Andrea Cheng" = 3000, "July Horitz" = 5000, "Danielle Muller" = 1000, 
             "Esteban Lugo" = 5000)

print(salary)

#_________---excercise

my_vec <- c(1:6)
a <- c('Sita', 'Geeta', 'Raju', 'Rani', 'Dev', 'Suraj')
names(a) <- my_vec
print(a)

print(attributes(a))
#----------------------------------

# Slicing and Indexing in R......................

n.deck <- c(6,7,8,9,10)
deck <- c('Duke', 'Assassin', 'Captain', 'Ambassador', 'Contessa')

print(deck[4])

print(deck[-4])

print(deck[c(1,3,5)])

names(n.deck) <- deck
print(n.deck)

print(n.deck['Contessa'])
print(n.deck[c('Contessa', 'Duke', 'Ambassador')])

#----------------SLICING................

print(n.deck[1:3])

lv <- seq(10,100, by = 10)
print(lv)

print(lv[-(4:7)])
# to remove in between values.....

#slicing with comparison operator...< >.........

print(lv[lv>30])

#---------------Exercise.............
#Extract the following values from the salary object:
#Тhe 6-th value (can you do it in more than one way)

#All the values but the 2nd one

#Values 1, 3, 5, 7, and 9

#All the values but the 4th, 5th, and 6th

#All the values larger than 2000

#.............ANswers................................
#print(salary) #from previous notes...

print(salary[6])
print(salary['Julia Walters'])


print('The next answer is')
print(salary[-2])


print('The next answer is')
print(salary[c(1,3,5,7,9)])


print('The next answer is')
print(salary[seq(1,9,2)]) #seq is used here..starting from
#1 to 9 with a step size of 2...

print('The next answer is')
print(salary[salary>2000])

print('The next answer is')
print(salary[-(4:6)])



########################################################
##### Changing Dimensions of an Object..................

# dimensions and classes..............

a <- seq(10, 120, by=10)
print(a)

print(class(a))
###  bends the object to transform into a two dimensional object..
#using  dim(object.to.transform) <- c(n,m)

dim (a) <- c(3,4)
print(a)

print(typeof(a))
print(class(a))


########################################################
#                   Excercise..........................

#Create a vector s that stores the number sequence
#2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30.
#Use the seq() command to do that.

#Check the attributes of s.

#Does it have any dimensions?
#Give it dimensions. Try specifying 3 rows and 5 columns.


#Answer.........

s <- c(seq(2, 30, by = 2))
print(s)

print(attributes(s))

dim(s) <- c(3,5)
print(s)

dim(s) <- c(1,3,5)
print(s)
















