#Fundamentals of Programming with R............

#Relational Operators....
# ==, !=, <, >, <=, >=

print(3==3)

print('cat' == 'cat')

print('cat' == 'car')

print('TRUE' == 'TRUE')

print('sugar' != 'salt')

print(3 != 5)

print(17>22)

print(17<8)

print('rat' < 'cat') #will count alphabetical order

print(TRUE<FALSE)
print(TRUE>FALSE) #here it takes T=1, F=0...boolean algebra

print(8>=7)
print(6 <= 3)


#............Logical Operators (Boolean Operators-----> and or not).......

w <- 9
print((w<12) & (w>6))
print((w>12) & (w>6))

print(TRUE & TRUE) #TRUE
print(TRUE & FALSE) # FALSE
print(FALSE & TRUE) # FALSE
print(FALSE & FALSE) # FALSE


#R returns True if it is true and true, it will return False if it is 
#true and false, will return False if it is False and false, will return 
#false for false and true as well......AND /& is exclusive operator


# OR / | operator is inclusive operator....as long as there is a TRUE value in 
#the expression, OR-| evaluates to TRUE........

print((w<1) | (w>6))
print((w>12) | (w<1))


print(TRUE | TRUE) #TRUE
print(TRUE | FALSE) # TRUE
print(FALSE | TRUE) # TRUE
print(FALSE | FALSE) # FALSE

# NOT '!'-----flips the result of a logical test.............

print(!TRUE)
print(!FALSE)


print(!(4<3))


#--------------------VECTORS AND LOGICAL OPERATORS---------------
v <- c(1,3,5,7)
w <- c(1,2,3,4)

print(3==v)
print(3==w)


print(12 > c(11,13,14,15))

print('catch' == c('catch', 22, 'is', 'hello'))

print(c(11,12,13) >= c(10, 12, 14))

print((v>=3) &(v<7))
print(v>=3)
print(v<7)

print(!('mode' > 'mope'))

s <- c(3,1,2,5)
print(s<4  && s>2)

#---------------------------EXCERCISE----------------------------------

#Explain the difference between |, ||, & and &&................
#Answer: 
# Single operators (|, &) can return a vector.....

print((-2:2) >= 0) & ((-2:2) <= 0)
print(-2:2)

# Double operators (||, &&) return a single value........
print((-2:2) >= 0 && (-2:2) <= 0)








