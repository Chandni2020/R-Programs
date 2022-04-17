# Matrix Operations in R..........

#recreating Matrix.mat data.........

#b.office <- c(171.5, 292, 281.6, 460.6, 139.3, 288)
matrix.mat <- matrix(c(171.5, 292, 281.6, 460.6, 139.3, 288), nrow=3, byrow = T,
                     dimnames = list(c('The Matrix', 'Reloaded', 'Revolutions'),
                                     c('US', 'Worldwide')))

print(matrix.mat)

#sum of column values......colSums......
total <- colSums(matrix.mat)
print(colSums(matrix.mat))

#sum of row values......rowSums......
print(rowSums(matrix.mat))

# to have mean of each column in data structure.......colMeans.....

average <- colMeans(matrix.mat)

print(colMeans(matrix.mat))
print(rowMeans(matrix.mat))

matrix.prelim <- rbind(matrix.mat, average, total)
print(matrix.prelim)

#------------------------ EXCERCISE.................................#######
#Create a 5x5 matrix with the rnorm() function, and a 5x5 matrix with 
#runif(). Create each in a single line of code (Hint: nest the operations)  


new_matrix <- matrix(rnorm(25), nrow = 5, ncol = 5, byrow = TRUE)
print(new_matrix)

new_matrix1 <- matrix(runif(25), nrow = 5, ncol = 5, byrow = TRUE)
print(new_matrix1)

#For the two matrices, get the following information; for the first four,
#save the new values as columns and rows in their corresponding matrixes:   

#Column averages  
#Column sums  

average_nmc <- colMeans(new_matrix)
average_nmc1 <- colMeans(new_matrix1)

total_nmc <- colSums(new_matrix)
total_nmc1 <- colSums(new_matrix1)
#print(total_nm)
#print(total_nm1)

new_matrix_nmc <- rbind(new_matrix, total_nmc, average_nmc)
new_matrix1_nmc1 <- rbind(new_matrix1, total_nmc1, average_nmc1)

print(new_matrix_nmc)
print(new_matrix1_nmc1)

#Row averages  
#Row sums  


average_nmr <- rowMeans(new_matrix_nmc)
average_nmr1<- rowMeans(new_matrix1_nmc1)

total_nmr <- rowSums(new_matrix_nmc)
total_nmr1 <- rowSums(new_matrix1_nmc1)


new_matrix_nm <- cbind(new_matrix_nmc, total_nmr, average_nmr)
new_matrix1_nm1 <- cbind(new_matrix1_nmc1, total_nmr1, average_nmr1)

print(new_matrix_nm)
print(new_matrix1_nm1)

#Minimum and maximum value in the matrix  
#Minimum and maximum value for the 3rd column in each matrix 
#The means and standard deviations for each matrix (compare the two values; 
#if interested in the mathematics side of things, recreate the matrices a 
#couple of times, and compare the results; can you explain what is happening?) 


print(min(new_matrix))
print(max(new_matrix))


print(min(new_matrix[,3]))
print(max(new_matrix[,3]))


print(min(new_matrix1[,3]))
print(max(new_matrix1[,3]))

print(mean(new_matrix))
print(mean(new_matrix1))


print(sd(new_matrix))
print(sd(new_matrix1))


#-----------------------------------------------------------------














