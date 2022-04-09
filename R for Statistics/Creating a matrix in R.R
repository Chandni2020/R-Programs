######Creating A MAtrix in R................

# Vectors -----> Dimensions ....> Matrices .....> Data Frames.

                                      
#.............................. .......

#vectors are one dimensional collection of data....
# matrices are two dimensional arrays.............
#matrices are natural extension of vectors.....


####Two methods craeting a matrix..........
####     1. rbind(....)...row bind
####     2. cbind(....)  ....column bind
## matrix (data = , nrow =, ncol = , ...)

mtrx <- matrix(1:12, nrow = 3)
print(mtrx)

mtrx <- matrix(1:12, ncol = 4)
print(mtrx)

# byrow = True is used if, i want the data to fill rows first
#rather than columns....

mtrx <- matrix(1:12, ncol = 4, byrow = TRUE)
print(mtrx)

#.........to use rbind and c bind..........

usa <- c(1.3, 1.5, 1.2, 1.4, 1.5)
print(usa)

de <- c(0.2, 0.4, 0.7, 0.8, 0.8)
print(de)


ngo <- cbind(usa,de)
print(ngo)

rownames(ngo) <- c('2013','2014','2015','2016','2017')
print(ngo)

# Transpose function to change orientation....
ngo <- t(ngo)
print(ngo)

#rbind(), binds vectors into rows of a matrix or adds them 
#to an existing structure...

ind <- c(2,2.2,3.2,4.2,2.5)
ngo <- rbind(ngo, ind)
print(ngo)

#.....###########----------------------------------
#Creating a matrix in one line of code..........

gdp <- matrix(c(47.9, 41.2, 41.9, 54.6, 56.2, 51.3, 1.6, 1.6, 1.7), 
              nrow = 3, byrow = TRUE, 
              dimnames = list(c('de','usa','ind'),
                              c('2010', '2015', '2020')))
print(gdp)


########################################################

#Excercise..........

Player <- c('dark', 'dark', 'dark','dark','dark', 
       'light', 'light','light','light','light')
Piece <- c('king', 'queen', 'pawn', 'pawn', 'knight',
       'bishop', 'king', 'rook', 'pawn', 'pawn')

chess <- c(Player, Piece)
print(chess)


#dim(chess) <- c(10,2)

mtrx1 <- cbind(Player, Piece)
print(mtrx1)


mtrx2 <- matrix(c('dark', 'dark', 'dark','dark','dark',
       'light', 'light','light','light','light',
       'king', 'queen', 'pawn', 'pawn', 'knight',
       'bishop', 'king', 'rook', 'pawn', 'pawn'), ncol = 2, byrow = FALSE,
       dimnames = list(NULL, c('Player', 'Piece')))


##################  Matrix Recycle   ################
#Recycling: Repeating the values in order to reach the
#necessary vector length to complete an operation..

exmpl <- matrix(1:10, nrow = 4, ncol = 4)
print(exmpl)

#Recycling happens in matrices, it will repeat the values to complete the matrix

########################################################
# subsetting a matrix......same like indexing and slicing in vectors...

gross <- c(380, 398,987,976,678,456,356,222,333,444,555,666,
           777,888,999,100)
hp.mat <- matrix(gross, nrow = 8, byrow = T)
print(hp.mat)

print(hp.mat[6,2])
#to get a specific element.......


print(hp.mat[6]) #itt will give you only 6th value

#to get entire 6th row..
print(hp.mat[6,])
print(hp.mat[,2])


############## Slicing >####################

#selecting multiple rows..............

print(hp.mat[c(1,3,7),])

# indexing a matrix row or column.......[n,] or [,n]..

colnames(hp.mat) <- c('USA', 'Worldwide')
rownames(hp.mat) <- c('Hallows Part2', 'S stone', 'H Part1', 'Order',
                      'Price', 'Gob', 'Chamber', 'Prisoner')

print(hp.mat)

print(hp.mat['Gob', ])

print(hp.mat[,'USA'])

#------Excercise..........................

#print(mtrx1)
print(chess)

#Transpose the chess matrix, and add a row storing the 
#following values: 3, 5, 2, 2, 7, 4, 6, 5, 2, 1

mtrx1.t <- t(mtrx1)
print(mtrx1.t)

turn <- c(3,5,2,2,7,4,6,5,2,1)

mtrx1.t <- rbind(mtrx1.t, 'Turn'=turn)
#print(chess.t)

mtrx1<- t(mtrx1.t)
print(mtrx1)

#The first piece of the light player
print(mtrx1[6,2])


#The Player and Piece columns
print(mtrx1[, 1:2])
#or
print(mtrx1[,-3])
#or
print(mtrx1[,c('Player', 'Piece')])

#All the information about the dark player

print(mtrx1[1:5, ])

#The Pieces column; try to extract that as a matrix
#(Hint: lookup the drop = argument)

print(mtrx1[,'Piece'])
print(mtrx1[, 2, drop = FALSE])


#Everything but the Piece column
print(mtrx1[,c('Player', 'Turn')])
#or
print(mtrx1[,-2])

#The 1st and 3rd values on the second row

print(mtrx1[2, c(1,3)])

#Replace the 3rd value on the 7th row with 3 
#(Hint: works just like creating an object)

#
mtrx1[7,3] <- 3
print(mtrx1[7,3])










                                      
  
  
  
  