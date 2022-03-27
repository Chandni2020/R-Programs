# Math functions with R.....and Regular Expressions.......

#abs():computes the absolute value

print(abs(2))
print(abs(-5))

print(abs(c(1,-2,-3,-5))) # on a vector


v <- c(1,6,-3)
print(sum(v))

print(mean(v))

v1 <- 2.345567

print(round(v1,digits=3))

print(round(v1,3))

#---Regular Expressions.....#grepl for logical and grep...for simple....
#general regular expressions....grep.....

text <- 'Hi there, do you know who you are voting for?'
print(text)

print(grepl('voting',text)) #to check if voting is there in text...

print(grep('know',text))

print(grepl('dog',text))
print(grep('voting',text))

v <- c('a','b','c','d','e')
print(v)


print(grepl('b',v))
print(grep('b',v))# grep is used to find index location....

print(grep('e',v))
