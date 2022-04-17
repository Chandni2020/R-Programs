#Categorical variables......Factors in R and Lists in R.......
#nominal and ordinal data.........


marital.status <- c('Married', 'Married', 'Single', 'Married', 'Divorced',
                    'Widowed', 'Divorced')


print(str(marital.status))

#to encode a vector as a factor variable.......factor(data)......

marital.factor <- factor(marital.status)
print(marital.factor)


typeof(marital.factor)
print(str(marital.factor))

#Nominal Variables: do not need to be ordered
#Ordinal Variables: must be ordered.......

#factor (data, levels=)
#levels = sets the order of encoding

new.factor <- factor(marital.status, levels = c('Single', 'Married', 'Divorced',
                     'Widowed'))
print(str(new.factor))


#----------levels(): provides access to the levels attribute of a variable, 
#can use it to rename the levels..........

levels(new.factor) <- c('s', 'm', 'd', 'w')
print(str(new.factor))


new.factor <- factor(marital.status, 
                     levels = c('Single', 'Married', 'Divorced','Widowed'), 
                     labels = c('Sin', 'Mar', 'Div', 'Wid'))
print(str(new.factor))

#when factor levels are ordered then variables become ordinal.....

ordered.factor <- factor(marital.status, ordered = TRUE,
                         levels = c('Single', 'Married', 'Divorced', 'Widowed'))

print(ordered.factor)


#-------------------EXCERCISE 15...........................................
#Requirements: the chess matrix from Exercise 11.
#Save the Piece column of the matrix as a vector.

#print(chess)

#print(matrix(chess))
piece <- mtrx1[, 'Piece']
print(piece)


#Create a factor from the vector.
#Organize the levels in the following way but do not order them: King, Queen, 
#Rook, Bishop, Knight, Pawn.

piece <- factor(piece, 
                levels = c('king','queen', 'rook', 'bishop', 'knight','pawn'),
                labels = c ('King', 'Queen', 'Rook', 'Bishop', 'Knight', 'Pawn'))


print(piece)


#Rename the levels with just their initial letters. Order the levels in the 
#way specified above.

levels(piece) <- c('K', 'Q', 'R', 'B', 'K', 'P')
print(piece)

piece.ordered <- factor(piece, ordered = TRUE, 
                        levels = c('K', 'Q', 'R', 'B', 'K', 'P'),
                        labels = c('King', 'Queen', 'Rook', 'Bishop', 'Knight',
                                   'Pawn'))

print(piece.ordered)












