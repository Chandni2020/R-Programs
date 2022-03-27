#Arguments of a function...

print(args(round))


print(round(3.4572, digits=0))

print(round(3.4572, digits=3))

print(round(3.452, 2))
#rather than writing '2' only, try to write digit=2...
print(round(digits=3, 3.4572))
#here there is no error, after changing the position as well...



print(args(sample))

#saved in environment form previous run program
print(median(years_of_experience))
#print(args(median))

print(median(years_of_experience, na.rm = FALSE))

print(salary)#saved in environment form previous run program

print(median(salary, na.rm = FALSE))
print(median(salary, na.rm = TRUE))

#......Building a Function in R...............

deck <- c('Duke', 'Assassin', 'Captain', 'Ambassador', 'Contessa')
#these are five characters name of cards....

print(deck)

#to draw cards from it, 'sample' command is used.....
sample(deck, size = 3)

hand <- sample(deck, size = 3, replace = T)
#replace= True, means repetition of same card may be there

print(hand)

#function in R contains:
# name +  body of code +  arguments
#function.name <- function(){body.of.code}

draw <- function(){
  deck <- c('Duke', 'Assassin', 'Captain', 'Ambassador', 'Contessa')
  hand <- sample(deck, size = 3, replace = T)
  print(hand)
}
#here our objective is 1. to create a deck every time
#2. sample 3 cards from it...3. allow repetition of cards...

#----------------------Excercise-------------
#write a function that flips a coin 100 times.

flip <- function(){
  coin <- c('heads', 'tails')
  toss <- sample(coin, size=100, replace = TRUE, prob = c(0.3, 0.7))
  return(toss)
}

print (flip())













