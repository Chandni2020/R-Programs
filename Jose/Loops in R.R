#while (condition){
  #code executed here
#}

#############################################
x <- 0

while(x<10){
  print(paste0('x is:',x))
  
  x <- x+1
}

# using break keyword to stop while loop.....

x <- 0

while(x<10){
  print(paste0('x is:',x))
  
  x <- x+1
  if (x==10){
    print('x is now eqaul to 5! Break Loop!')
    break
    print('wow I got the result')
  }
}
