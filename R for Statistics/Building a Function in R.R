
#---------------Building a Function in R------------------------


coup <- matrix(rep(c('Duke', 'Assassin', 'Captain', 
                     'Ambassador', 'Contessa'), 3), ncol = 1)

deal <- function(deck){
  cards <- deck[1:3,]
  print(cards)
}

print(deal(deck = coup))

shuffle <- function(deck){
  random <- sample(1:23, size = 23)
  deck.s <- deck[random, drop = FALSE]
  print(deck.s)
}

print(shuffle(coup))


#-----------SCOPING.........Function inside a function............
mult12 <- function(x){
  y <- (x*12)
  return(y)
}

new.var <- mult12(3)
print(new.var)

shuffle <- function(deck){
  random <- sample(1:23, size = 23)
  deck.s <- deck[random, drop = FALSE]
  print(deck.s)
}

deal <- function(deck){
  shuffled <- shuffle(deck)
  cards <- shuffled[1:3, ]
  return(cards)
}
print(deal(coup))

