# For and While loops...................

for (value in x){
  y
}

title <- c('Catch', 'Me', 'if', 'You', 'Can')

for (word in title){
  print('Tom hank is sweetheart')
  print(word)
}

new.title <- vector(length = 5)
print(new.title)

for (i in 1:5){
  new.title[i] <- title[i]
}
print(new.title)

#---------------------------------EXCERCISE--------------------

n <- 100
sum <- 0

for (i in 1:n){
  sum <- sum + i
  print(sum)
}

# -------------------------------WHILE Loop--------------------------

n <- -15
#while(n < 0){
#  print('your value n stands for negative')
#}
while (n < 0){
  print(paste('your value equals', n)) #paste turns vectors into string type and combine them
  n <- n + 1
}

#_______________EXCERcise.-------------------------
#Write a while loop that sums all the numbers from 1 to n.

n <- 10
sum <- 0
i <- 1


while (i <= n) {
  sum <- sum + i
  i <- i + 1
  print(sum)
}

#-------------------------repeat loop.-------------------------------

n <- -12

repeat{
  print(paste('your value equals', n))
  n <- n + 1
  if (n >= 12){
    print('it is now either 12 or more')
    print('The loop will be broken')
    break
  }
}


for(i in 22:43){
  print(paste('I is', i))
  
}



