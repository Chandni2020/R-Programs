# For loop for vector........
v <- c(1,2,3)

for (variable in v) {
  print(variable)
  
}

#-----------------------------

v <- c(1,2,3,4,5)

for (temp.var in v) {
  #execute code
  print(temp.var)
  #print('hello')
}
#____________........
v <- c(1,2,3,4,5)

for (temp.var in v) {
  result <- temp.var + 1
  print('The temp.var plus 1 is equal to:')
  print(result)
  
}


# For loop for list......
my.list <- list(c(1,2,3),mtcars,12)

for (item in my.list){
  print(item)
}


# For loop for matrix..............
mat <- matrix(1:25, nrow=5)

for(num in mat){
  print(num)
}

#nest for loops.......
mat <- matrix(1:25, nrow=5)
for (row in 1:nrow(mat)){
  for (col in 1:ncol(mat)){
    print(paste('The element at row:',row, 'and col:',col,'is', mat[row,col]))
  }
}
