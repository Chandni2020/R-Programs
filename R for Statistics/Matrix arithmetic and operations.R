#matrix arithmetic and operations.......

#scaling  a matrix..........

b.office <- c(171.5, 292, 281.6, 460.6, 139.3, 288)
matrix.mat <- matrix(b.office, nrow=3, byrow = T,
                     dimnames = list(c('The Matrix', 'Reloaded', 'Revolutions'),
                                     c('US', 'Worldwide')))

print(matrix.mat)

#now suppose here data is in millions, but if i want data in 
#billions, then we use scalar multiplication.......


matrix.scaled <- matrix.mat /1000
print(matrix.scaled)


budget <- matrix(c(63, 150, 150), nrow = 3, ncol = 2) 
print(budget)

margin <- matrix.mat - budget
print(margin)

matrix.mat - c(63, 150, 150)

#multiplication of matrices...............

v <- matrix(1:6, nrow = 3)
print(v)

matrix.multiplied <- matrix.mat * v
print(matrix.multiplied)

######################################################
########------------EXCERCISE-------##############
#Lookup the runif() function. Create a 3x4 matrix with 12 random numbers 
#generated using the runif() function; have the matrix be filled our 
#row-by-row, instead of column-by-column.

#Name the columns of the matrix uno, dos, tres, cuatro, and the rows x, y, z.


matrix1 <- matrix(runif(12), nrow = 3, byrow = TRUE,
                    dimnames = list(c('x','y','z'), 
                                    c('uno', 'dos', 'tres', 'cuatro')))
print(matrix1)


#Scale the matrix by 10 and save the result.
matrix1.scaled <- matrix1*10
print(matrix1.scaled)

#Extract a 2x4 matrix from it and save the result.

matrix2 <- matrix(matrix1, nrow = 2, ncol = 4, byrow = TRUE)
print(matrix2)

matrix2_test <- matrix1[1:2, ]
print(matrix2_test)

#Subtract the smaller matrix from the larger one. Can you do that? Why?
  
#matrix3 <- matrix1 - matrix2
#print(matrix3)


#Extract a 3x3 matrix from the original matrix and save the result. 
#Try the subtraction again. Can you do that? Why?

matrix4 <- matrix(matrix1, nrow = 3, ncol = 3, byrow = TRUE)
print(matrix4)

#matrix5 <- matrix1 - matrix4
#print(matrix5)


#Extract the column called “uno” as a vector from the original matrix and 
#save the result. Try the subtraction again. Can you do that? Why?


matrix6 <- matrix1[,-4]
print(matrix6)


uno <- matrix1[, 'uno']
print(uno)

matrix7 <- matrix1 - uno
print(matrix7)


#Lookup the rnorm() function. Create a new 3x4 matrix with 12 random 
#values generated using the rnorm() function.

new.mat <- matrix(rnorm(12), nrow = 3, byrow = TRUE)
print(new.mat)

#Perform matrix multiplication (using the * sign). Can you do that? 
#How is the operation carried out?

print(matrix1 * new.mat)

#Perform inner matrix multiplication with the two matrixes. Can you do that? 
#Why? Can you think of something to do to make this possible?

print(matrix1 %*% t(new.mat))

